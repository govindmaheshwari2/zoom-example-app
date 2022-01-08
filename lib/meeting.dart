import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:hmssdk_flutter/hmssdk_flutter.dart';
import 'package:mobx/mobx.dart';
import 'package:zoom/message.dart';
import 'package:zoom/setup/meeting_controller.dart';
import 'package:zoom/setup/meeting_store.dart';
import 'package:zoom/setup/peerTrackNode.dart';

class Meeting extends StatefulWidget {
  final String name, roomLink;

  const Meeting({Key? key, required this.name, required this.roomLink})
      : super(key: key);

  @override
  _MeetingState createState() => _MeetingState();
}

class _MeetingState extends State<Meeting> with WidgetsBindingObserver {
  late MeetingStore _meetingStore;
  bool selfLeave = false;
  bool raisedHand = false;

  initMeeting() async {
    bool ans = await _meetingStore.joinMeeting();
    if (!ans) {
      const SnackBar(content: Text("Unable to Join"));
      Navigator.of(context).pop();
    }
    _meetingStore.startListen();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
    _meetingStore = MeetingStore();
    MeetingController meetingController =
        MeetingController(roomUrl: widget.roomLink, user: widget.name);
    _meetingStore.meetingController = meetingController;

    initMeeting();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text("100ms Zoom"),
          actions: [
            IconButton(
                onPressed: () {
                  _meetingStore.toggleCamera();
                },
                icon: const Icon(Icons.camera_front)),
            IconButton(
                onPressed: () {
                  chatMessages(context, _meetingStore);
                },
                icon: const Icon(Icons.message)),
          ],
        ),
        body: Stack(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
              child: Center(
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Flexible(
                        child: Observer(
                          builder: (_) {
                            if (_meetingStore.isRoomEnded && !selfLeave) {
                              Navigator.pop(context);
                            }
                            if (_meetingStore.peerTracks.isEmpty) {
                              return const Center(
                                  child: Text('Waiting for others to join!'));
                            }
                            ObservableList<PeerTracKNode> peerFilteredList =
                                _meetingStore.peerTracks;

                            return videoPageView(peerFilteredList);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Observer(builder: (context) {
                      return CircleAvatar(
                        backgroundColor: Colors.black,
                        child: IconButton(
                          icon: _meetingStore.isMicOn
                              ? const Icon(Icons.mic)
                              : const Icon(Icons.mic_off),
                          onPressed: () {
                            _meetingStore.toggleAudio();
                          },
                          color: Colors.blue,
                        ),
                      );
                    }),
                    Observer(builder: (context) {
                      return CircleAvatar(
                        backgroundColor: Colors.black,
                        child: IconButton(
                          icon: _meetingStore.isVideoOn
                              ? const Icon(Icons.videocam)
                              : const Icon(Icons.videocam_off),
                          onPressed: () {
                            _meetingStore.toggleVideo();
                          },
                          color: Colors.blue,
                        ),
                      );
                    }),
                    Observer(builder: (context) {
                      return CircleAvatar(
                        backgroundColor: Colors.black,
                        child: IconButton(
                          icon: Image.asset(
                            'assets/raise_hand.png',
                            color: raisedHand
                                ? Colors.amber.shade300
                                : Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              raisedHand = !raisedHand;
                            });
                            _meetingStore.raiseHand();
                          },
                          color: Colors.blue,
                        ),
                      );
                    }),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      child: IconButton(
                        icon: const Icon(Icons.call_end),
                        onPressed: () {
                          _meetingStore.leaveMeeting();
                          selfLeave = true;
                          Navigator.pop(context);
                        },
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      onWillPop: () async {
        bool ans = await _onBackPressed();
        return ans;
      },
    );
  }

  Future<dynamic> _onBackPressed() {
    return showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
              title: const Text('Leave the Meeting?'),
              actions: [
                TextButton(
                    onPressed: () => {
                          _meetingStore.leaveMeeting(),
                          Navigator.pop(context, true),
                        },
                    child: const Text('Yes',
                        style: TextStyle(height: 1, fontSize: 24))),
                TextButton(
                    onPressed: () => Navigator.pop(context, false),
                    child: const Text('Cancel',
                        style: TextStyle(
                            height: 1, fontSize: 24, color: Colors.red))),
              ],
            ));
  }

  Widget videoPageView(List<PeerTracKNode> filteredList) {
    List<Widget> pageChild = [];
    if (_meetingStore.screenShareTrack != null) {
      pageChild.add(RotatedBox(
        quarterTurns: 1,
        child: Container(
            margin:
                const EdgeInsets.only(bottom: 0, left: 0, right: 100, top: 0),
            child: Observer(builder: (context) {
              return HMSVideoView(track: _meetingStore.screenShareTrack!);
            })),
      ));
    }
    for (int i = 0; i < filteredList.length; i = i + 6) {
      if (filteredList.length - i > 5) {
        Widget temp = singleVideoPageView(6, i, filteredList);
        pageChild.add(temp);
      } else {
        Widget temp =
            singleVideoPageView(filteredList.length - i, i, filteredList);
        pageChild.add(temp);
      }
    }
    return PageView(
      children: pageChild,
    );
  }

  Widget singleVideoPageView(int count, int index, List<PeerTracKNode> tracks) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            margin: const EdgeInsets.only(
                bottom: 100, left: 10, right: 10, top: 10),
            child: Observer(builder: (context) {
              return videoViewGrid(count, index, tracks);
            })));
  }

  Widget videoViewGrid(int count, int start, List<PeerTracKNode> tracks) {
    ObservableMap<String, HMSTrackUpdate> trackUpdate =
        _meetingStore.trackStatus;
    ObservableList<HMSPeer> peers = _meetingStore.peers;

    return GridView.builder(
      itemCount: count,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (itemBuilder, index) {
        return Observer(builder: (context) {
          HMSPeer peer = peers[peers.indexWhere(
              (element) => element.peerId == tracks[start + index].peerId)];
          return videoTile(
              tracks[start + index],
              !(tracks[start + index].track?.peer?.isLocal ?? false
                  ? !_meetingStore.isVideoOn
                  : (trackUpdate[tracks[start + index].peerId]) ==
                      HMSTrackUpdate.trackMuted),
              MediaQuery.of(context).size.width / 2 - 25,
              peer.metadata.toString() == "{\"isHandRaised\":true}");
        });
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          childAspectRatio: 0.88),
    );
  }

  Widget videoTile(
      PeerTracKNode track, bool isVideoMuted, double size, bool isHandRaised) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: size,
                height: size,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: (track.track != null && isVideoMuted)
                        ? HMSVideoView(
                            track: track.track!,
                          )
                        : Container(
                            width: 200,
                            height: 200,
                            color: Colors.black,
                            child: Center(
                              child: CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.green,
                                child: track.name.contains(" ")
                                    ? Text(
                                        (track.name.toString().substring(0, 1) +
                                                track.name
                                                    .toString()
                                                    .split(" ")[1]
                                                    .substring(0, 1))
                                            .toUpperCase(),
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      )
                                    : Text(track.name
                                        .toString()
                                        .substring(0, 1)
                                        .toUpperCase()),
                              ),
                            ))),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                track.name,
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
        Align(
          alignment: Alignment.topLeft,
          child: isHandRaised
              ? Container(
                  margin: const EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/raise_hand.png',
                    scale: 2,
                  ),
                )
              : Container(),
        ),
      ],
    );
  }
}
