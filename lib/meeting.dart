import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:hmssdk_flutter/hmssdk_flutter.dart';
import 'package:mobx/mobx.dart';
import 'package:zoom/message.dart';
import 'package:zoom/setup/peerTrackNode.dart';

class Meeting extends StatefulWidget {
  final String name, roomLink;

  const Meeting({Key? key, required this.name, required this.roomLink})
      : super(key: key);

  @override
  _MeetingState createState() => _MeetingState();
}

class _MeetingState extends State<Meeting> with WidgetsBindingObserver {
  bool selfLeave = false;
  bool raisedHand = false;

  initMeeting() async {}

  @override
  void initState() {
    super.initState();

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
                  // Camera Toggle front to back and vice versa
                },
                icon: const Icon(Icons.camera_front)),
            IconButton(
                onPressed: () {
                  // Uncomment to start meeting page
                  // chatMessages(context, _meetingStore);
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
                        child: Container(),
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
                          icon: const Icon(Icons.mic),
                          onPressed: () {
                            // Switch mic
                          },
                          color: Colors.blue,
                        ),
                      );
                    }),
                    Observer(builder: (context) {
                      return CircleAvatar(
                        backgroundColor: Colors.black,
                        child: IconButton(
                          icon: const Icon(Icons.videocam),
                          onPressed: () {
                            // Switch video
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
                            // Toggle Raise Hand
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
                          // leave meeting
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
                          // leave meeting
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

    // Screen share code and add it to pageChild for viewing it at first page

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
    //  ObservableMap<String, HMSTrackUpdate> trackUpdate =_meetingStore.trackStatus;

    return GridView.builder(
      itemCount: count,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (itemBuilder, index) {
        return Container();

        // TODO: Uncomment below lines to render video it will pass important parameters like raise hand,
        // video status, tracks, find peerId

        // return Observer(builder: (context) {
        //   return videoTile(
        //       tracks[start + index],
        //       !(tracks[start + index].peer.isLocal
        //           ? !_meetingStore.isVideoOn
        //           : (trackUpdate[tracks[start + index].peerId]) ==
        //               HMSTrackUpdate.trackMuted),
        //       MediaQuery.of(context).size.width / 2 - 25,
        //      tracks[start + index].isRaiseHand);
        // });
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
                  child: Container(
                      // HMSVideoView implementation
                      )),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    // Username (track.name) inside text widget
                    ))
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
