// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MeetingStore on MeetingStoreBase, Store {
  final _$isSpeakerOnAtom = Atom(name: 'MeetingStoreBase.isSpeakerOn');

  @override
  bool get isSpeakerOn {
    _$isSpeakerOnAtom.reportRead();
    return super.isSpeakerOn;
  }

  @override
  set isSpeakerOn(bool value) {
    _$isSpeakerOnAtom.reportWrite(value, super.isSpeakerOn, () {
      super.isSpeakerOn = value;
    });
  }

  final _$screenSharePeerIdAtom =
      Atom(name: 'MeetingStoreBase.screenSharePeerId');

  @override
  String get screenSharePeerId {
    _$screenSharePeerIdAtom.reportRead();
    return super.screenSharePeerId;
  }

  @override
  set screenSharePeerId(String value) {
    _$screenSharePeerIdAtom.reportWrite(value, super.screenSharePeerId, () {
      super.screenSharePeerId = value;
    });
  }

  final _$hmsExceptionAtom = Atom(name: 'MeetingStoreBase.hmsException');

  @override
  HMSException? get hmsException {
    _$hmsExceptionAtom.reportRead();
    return super.hmsException;
  }

  @override
  set hmsException(HMSException? value) {
    _$hmsExceptionAtom.reportWrite(value, super.hmsException, () {
      super.hmsException = value;
    });
  }

  final _$hasHlsStartedAtom = Atom(name: 'MeetingStoreBase.hasHlsStarted');

  @override
  bool get hasHlsStarted {
    _$hasHlsStartedAtom.reportRead();
    return super.hasHlsStarted;
  }

  @override
  set hasHlsStarted(bool value) {
    _$hasHlsStartedAtom.reportWrite(value, super.hasHlsStarted, () {
      super.hasHlsStarted = value;
    });
  }

  final _$isHLSLinkAtom = Atom(name: 'MeetingStoreBase.isHLSLink');

  @override
  bool get isHLSLink {
    _$isHLSLinkAtom.reportRead();
    return super.isHLSLink;
  }

  @override
  set isHLSLink(bool value) {
    _$isHLSLinkAtom.reportWrite(value, super.isHLSLink, () {
      super.isHLSLink = value;
    });
  }

  final _$roleChangeRequestAtom =
      Atom(name: 'MeetingStoreBase.roleChangeRequest');

  @override
  HMSRoleChangeRequest? get roleChangeRequest {
    _$roleChangeRequestAtom.reportRead();
    return super.roleChangeRequest;
  }

  @override
  set roleChangeRequest(HMSRoleChangeRequest? value) {
    _$roleChangeRequestAtom.reportWrite(value, super.roleChangeRequest, () {
      super.roleChangeRequest = value;
    });
  }

  final _$isMeetingStartedAtom =
      Atom(name: 'MeetingStoreBase.isMeetingStarted');

  @override
  bool get isMeetingStarted {
    _$isMeetingStartedAtom.reportRead();
    return super.isMeetingStarted;
  }

  @override
  set isMeetingStarted(bool value) {
    _$isMeetingStartedAtom.reportWrite(value, super.isMeetingStarted, () {
      super.isMeetingStarted = value;
    });
  }

  final _$isVideoOnAtom = Atom(name: 'MeetingStoreBase.isVideoOn');

  @override
  bool get isVideoOn {
    _$isVideoOnAtom.reportRead();
    return super.isVideoOn;
  }

  @override
  set isVideoOn(bool value) {
    _$isVideoOnAtom.reportWrite(value, super.isVideoOn, () {
      super.isVideoOn = value;
    });
  }

  final _$isMicOnAtom = Atom(name: 'MeetingStoreBase.isMicOn');

  @override
  bool get isMicOn {
    _$isMicOnAtom.reportRead();
    return super.isMicOn;
  }

  @override
  set isMicOn(bool value) {
    _$isMicOnAtom.reportWrite(value, super.isMicOn, () {
      super.isMicOn = value;
    });
  }

  final _$isScreenShareOnAtom = Atom(name: 'MeetingStoreBase.isScreenShareOn');

  @override
  bool get isScreenShareOn {
    _$isScreenShareOnAtom.reportRead();
    return super.isScreenShareOn;
  }

  @override
  set isScreenShareOn(bool value) {
    _$isScreenShareOnAtom.reportWrite(value, super.isScreenShareOn, () {
      super.isScreenShareOn = value;
    });
  }

  final _$screenShareTrackAtom =
      Atom(name: 'MeetingStoreBase.screenShareTrack');

  @override
  ObservableList<HMSTrack?> get screenShareTrack {
    _$screenShareTrackAtom.reportRead();
    return super.screenShareTrack;
  }

  @override
  set screenShareTrack(ObservableList<HMSTrack?> value) {
    _$screenShareTrackAtom.reportWrite(value, super.screenShareTrack, () {
      super.screenShareTrack = value;
    });
  }

  final _$curentScreenShareTrackAtom =
      Atom(name: 'MeetingStoreBase.curentScreenShareTrack');

  @override
  HMSTrack? get curentScreenShareTrack {
    _$curentScreenShareTrackAtom.reportRead();
    return super.curentScreenShareTrack;
  }

  @override
  set curentScreenShareTrack(HMSTrack? value) {
    _$curentScreenShareTrackAtom
        .reportWrite(value, super.curentScreenShareTrack, () {
      super.curentScreenShareTrack = value;
    });
  }

  final _$reconnectingAtom = Atom(name: 'MeetingStoreBase.reconnecting');

  @override
  bool get reconnecting {
    _$reconnectingAtom.reportRead();
    return super.reconnecting;
  }

  @override
  set reconnecting(bool value) {
    _$reconnectingAtom.reportWrite(value, super.reconnecting, () {
      super.reconnecting = value;
    });
  }

  final _$reconnectedAtom = Atom(name: 'MeetingStoreBase.reconnected');

  @override
  bool get reconnected {
    _$reconnectedAtom.reportRead();
    return super.reconnected;
  }

  @override
  set reconnected(bool value) {
    _$reconnectedAtom.reportWrite(value, super.reconnected, () {
      super.reconnected = value;
    });
  }

  final _$isRoomEndedAtom = Atom(name: 'MeetingStoreBase.isRoomEnded');

  @override
  bool get isRoomEnded {
    _$isRoomEndedAtom.reportRead();
    return super.isRoomEnded;
  }

  @override
  set isRoomEnded(bool value) {
    _$isRoomEndedAtom.reportWrite(value, super.isRoomEnded, () {
      super.isRoomEnded = value;
    });
  }

  final _$isRecordingStartedAtom =
      Atom(name: 'MeetingStoreBase.isRecordingStarted');

  @override
  bool get isRecordingStarted {
    _$isRecordingStartedAtom.reportRead();
    return super.isRecordingStarted;
  }

  @override
  set isRecordingStarted(bool value) {
    _$isRecordingStartedAtom.reportWrite(value, super.isRecordingStarted, () {
      super.isRecordingStarted = value;
    });
  }

  final _$eventAtom = Atom(name: 'MeetingStoreBase.event');

  @override
  String get event {
    _$eventAtom.reportRead();
    return super.event;
  }

  @override
  set event(String value) {
    _$eventAtom.reportWrite(value, super.event, () {
      super.event = value;
    });
  }

  final _$hmsTrackChangeRequestAtom =
      Atom(name: 'MeetingStoreBase.hmsTrackChangeRequest');

  @override
  HMSTrackChangeRequest? get hmsTrackChangeRequest {
    _$hmsTrackChangeRequestAtom.reportRead();
    return super.hmsTrackChangeRequest;
  }

  @override
  set hmsTrackChangeRequest(HMSTrackChangeRequest? value) {
    _$hmsTrackChangeRequestAtom.reportWrite(value, super.hmsTrackChangeRequest,
        () {
      super.hmsTrackChangeRequest = value;
    });
  }

  final _$rolesAtom = Atom(name: 'MeetingStoreBase.roles');

  @override
  List<HMSRole> get roles {
    _$rolesAtom.reportRead();
    return super.roles;
  }

  @override
  set roles(List<HMSRole> value) {
    _$rolesAtom.reportWrite(value, super.roles, () {
      super.roles = value;
    });
  }

  final _$peersAtom = Atom(name: 'MeetingStoreBase.peers');

  @override
  ObservableList<HMSPeer> get peers {
    _$peersAtom.reportRead();
    return super.peers;
  }

  @override
  set peers(ObservableList<HMSPeer> value) {
    _$peersAtom.reportWrite(value, super.peers, () {
      super.peers = value;
    });
  }

  final _$localPeerAtom = Atom(name: 'MeetingStoreBase.localPeer');

  @override
  HMSPeer? get localPeer {
    _$localPeerAtom.reportRead();
    return super.localPeer;
  }

  @override
  set localPeer(HMSPeer? value) {
    _$localPeerAtom.reportWrite(value, super.localPeer, () {
      super.localPeer = value;
    });
  }

  final _$localTrackAtom = Atom(name: 'MeetingStoreBase.localTrack');

  @override
  HMSTrack? get localTrack {
    _$localTrackAtom.reportRead();
    return super.localTrack;
  }

  @override
  set localTrack(HMSTrack? value) {
    _$localTrackAtom.reportWrite(value, super.localTrack, () {
      super.localTrack = value;
    });
  }

  final _$screenTrackAtom = Atom(name: 'MeetingStoreBase.screenTrack');

  @override
  HMSTrack? get screenTrack {
    _$screenTrackAtom.reportRead();
    return super.screenTrack;
  }

  @override
  set screenTrack(HMSTrack? value) {
    _$screenTrackAtom.reportWrite(value, super.screenTrack, () {
      super.screenTrack = value;
    });
  }

  final _$isActiveSpeakerModeAtom =
      Atom(name: 'MeetingStoreBase.isActiveSpeakerMode');

  @override
  bool get isActiveSpeakerMode {
    _$isActiveSpeakerModeAtom.reportRead();
    return super.isActiveSpeakerMode;
  }

  @override
  set isActiveSpeakerMode(bool value) {
    _$isActiveSpeakerModeAtom.reportWrite(value, super.isActiveSpeakerMode, () {
      super.isActiveSpeakerMode = value;
    });
  }

  final _$activeSpeakerPeerTracksStoreAtom =
      Atom(name: 'MeetingStoreBase.activeSpeakerPeerTracksStore');

  @override
  ObservableList<PeerTracKNode> get activeSpeakerPeerTracksStore {
    _$activeSpeakerPeerTracksStoreAtom.reportRead();
    return super.activeSpeakerPeerTracksStore;
  }

  @override
  set activeSpeakerPeerTracksStore(ObservableList<PeerTracKNode> value) {
    _$activeSpeakerPeerTracksStoreAtom
        .reportWrite(value, super.activeSpeakerPeerTracksStore, () {
      super.activeSpeakerPeerTracksStore = value;
    });
  }

  final _$tracksAtom = Atom(name: 'MeetingStoreBase.tracks');

  @override
  ObservableList<HMSTrack> get tracks {
    _$tracksAtom.reportRead();
    return super.tracks;
  }

  @override
  set tracks(ObservableList<HMSTrack> value) {
    _$tracksAtom.reportWrite(value, super.tracks, () {
      super.tracks = value;
    });
  }

  final _$audioTracksAtom = Atom(name: 'MeetingStoreBase.audioTracks');

  @override
  ObservableList<HMSTrack> get audioTracks {
    _$audioTracksAtom.reportRead();
    return super.audioTracks;
  }

  @override
  set audioTracks(ObservableList<HMSTrack> value) {
    _$audioTracksAtom.reportWrite(value, super.audioTracks, () {
      super.audioTracks = value;
    });
  }

  final _$messagesAtom = Atom(name: 'MeetingStoreBase.messages');

  @override
  ObservableList<HMSMessage> get messages {
    _$messagesAtom.reportRead();
    return super.messages;
  }

  @override
  set messages(ObservableList<HMSMessage> value) {
    _$messagesAtom.reportWrite(value, super.messages, () {
      super.messages = value;
    });
  }

  final _$trackStatusAtom = Atom(name: 'MeetingStoreBase.trackStatus');

  @override
  ObservableMap<String, HMSTrackUpdate> get trackStatus {
    _$trackStatusAtom.reportRead();
    return super.trackStatus;
  }

  @override
  set trackStatus(ObservableMap<String, HMSTrackUpdate> value) {
    _$trackStatusAtom.reportWrite(value, super.trackStatus, () {
      super.trackStatus = value;
    });
  }

  final _$audioTrackStatusAtom =
      Atom(name: 'MeetingStoreBase.audioTrackStatus');

  @override
  ObservableMap<String, HMSTrackUpdate> get audioTrackStatus {
    _$audioTrackStatusAtom.reportRead();
    return super.audioTrackStatus;
  }

  @override
  set audioTrackStatus(ObservableMap<String, HMSTrackUpdate> value) {
    _$audioTrackStatusAtom.reportWrite(value, super.audioTrackStatus, () {
      super.audioTrackStatus = value;
    });
  }

  final _$peerTracksAtom = Atom(name: 'MeetingStoreBase.peerTracks');

  @override
  ObservableList<PeerTracKNode> get peerTracks {
    _$peerTracksAtom.reportRead();
    return super.peerTracks;
  }

  @override
  set peerTracks(ObservableList<PeerTracKNode> value) {
    _$peerTracksAtom.reportWrite(value, super.peerTracks, () {
      super.peerTracks = value;
    });
  }

  final _$observableMapAtom = Atom(name: 'MeetingStoreBase.observableMap');

  @override
  ObservableMap<String, String> get observableMap {
    _$observableMapAtom.reportRead();
    return super.observableMap;
  }

  @override
  set observableMap(ObservableMap<String, String> value) {
    _$observableMapAtom.reportWrite(value, super.observableMap, () {
      super.observableMap = value;
    });
  }

  final _$joinAsyncAction = AsyncAction('MeetingStoreBase.join');

  @override
  Future<bool> join(String user, String roomUrl) {
    return _$joinAsyncAction.run(() => super.join(user, roomUrl));
  }

  final _$switchAudioAsyncAction = AsyncAction('MeetingStoreBase.switchAudio');

  @override
  Future<void> switchAudio() {
    return _$switchAudioAsyncAction.run(() => super.switchAudio());
  }

  final _$switchVideoAsyncAction = AsyncAction('MeetingStoreBase.switchVideo');

  @override
  Future<void> switchVideo() {
    return _$switchVideoAsyncAction.run(() => super.switchVideo());
  }

  final _$switchCameraAsyncAction =
      AsyncAction('MeetingStoreBase.switchCamera');

  @override
  Future<void> switchCamera() {
    return _$switchCameraAsyncAction.run(() => super.switchCamera());
  }

  final _$isScreenShareActiveAsyncAction =
      AsyncAction('MeetingStoreBase.isScreenShareActive');

  @override
  Future<void> isScreenShareActive() {
    return _$isScreenShareActiveAsyncAction
        .run(() => super.isScreenShareActive());
  }

  final _$MeetingStoreBaseActionController =
      ActionController(name: 'MeetingStoreBase');

  @override
  void addUpdateListener() {
    final _$actionInfo = _$MeetingStoreBaseActionController.startAction(
        name: 'MeetingStoreBase.addUpdateListener');
    try {
      return super.addUpdateListener();
    } finally {
      _$MeetingStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeUpdateListener() {
    final _$actionInfo = _$MeetingStoreBaseActionController.startAction(
        name: 'MeetingStoreBase.removeUpdateListener');
    try {
      return super.removeUpdateListener();
    } finally {
      _$MeetingStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void sendBroadcastMessage(String message) {
    final _$actionInfo = _$MeetingStoreBaseActionController.startAction(
        name: 'MeetingStoreBase.sendBroadcastMessage');
    try {
      return super.sendBroadcastMessage(message);
    } finally {
      _$MeetingStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleSpeaker() {
    final _$actionInfo = _$MeetingStoreBaseActionController.startAction(
        name: 'MeetingStoreBase.toggleSpeaker');
    try {
      return super.toggleSpeaker();
    } finally {
      _$MeetingStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removePeer(HMSPeer peer) {
    final _$actionInfo = _$MeetingStoreBaseActionController.startAction(
        name: 'MeetingStoreBase.removePeer');
    try {
      return super.removePeer(peer);
    } finally {
      _$MeetingStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addPeer(HMSPeer peer) {
    final _$actionInfo = _$MeetingStoreBaseActionController.startAction(
        name: 'MeetingStoreBase.addPeer');
    try {
      return super.addPeer(peer);
    } finally {
      _$MeetingStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeTrackWithTrackId(String trackId) {
    final _$actionInfo = _$MeetingStoreBaseActionController.startAction(
        name: 'MeetingStoreBase.removeTrackWithTrackId');
    try {
      return super.removeTrackWithTrackId(trackId);
    } finally {
      _$MeetingStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeTrackWithPeerId(String peerId) {
    final _$actionInfo = _$MeetingStoreBaseActionController.startAction(
        name: 'MeetingStoreBase.removeTrackWithPeerId');
    try {
      return super.removeTrackWithPeerId(peerId);
    } finally {
      _$MeetingStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeTrackWithPeerIdExtra(String trackId) {
    final _$actionInfo = _$MeetingStoreBaseActionController.startAction(
        name: 'MeetingStoreBase.removeTrackWithPeerIdExtra');
    try {
      return super.removeTrackWithPeerIdExtra(trackId);
    } finally {
      _$MeetingStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  int insertTrackWithPeerId(HMSPeer peer) {
    final _$actionInfo = _$MeetingStoreBaseActionController.startAction(
        name: 'MeetingStoreBase.insertTrackWithPeerId');
    try {
      return super.insertTrackWithPeerId(peer);
    } finally {
      _$MeetingStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addTrack(HMSTrack track, HMSPeer peer) {
    final _$actionInfo = _$MeetingStoreBaseActionController.startAction(
        name: 'MeetingStoreBase.addTrack');
    try {
      return super.addTrack(track, peer);
    } finally {
      _$MeetingStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onRoleUpdated(int index, HMSPeer peer) {
    final _$actionInfo = _$MeetingStoreBaseActionController.startAction(
        name: 'MeetingStoreBase.onRoleUpdated');
    try {
      return super.onRoleUpdated(index, peer);
    } finally {
      _$MeetingStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateRoleChangeRequest(HMSRoleChangeRequest roleChangeRequest) {
    final _$actionInfo = _$MeetingStoreBaseActionController.startAction(
        name: 'MeetingStoreBase.updateRoleChangeRequest');
    try {
      return super.updateRoleChangeRequest(roleChangeRequest);
    } finally {
      _$MeetingStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addMessage(HMSMessage message) {
    final _$actionInfo = _$MeetingStoreBaseActionController.startAction(
        name: 'MeetingStoreBase.addMessage');
    try {
      return super.addMessage(message);
    } finally {
      _$MeetingStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addTrackChangeRequestInstance(
      HMSTrackChangeRequest hmsTrackChangeRequest) {
    final _$actionInfo = _$MeetingStoreBaseActionController.startAction(
        name: 'MeetingStoreBase.addTrackChangeRequestInstance');
    try {
      return super.addTrackChangeRequestInstance(hmsTrackChangeRequest);
    } finally {
      _$MeetingStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updatePeerAt(dynamic peer) {
    final _$actionInfo = _$MeetingStoreBaseActionController.startAction(
        name: 'MeetingStoreBase.updatePeerAt');
    try {
      return super.updatePeerAt(peer);
    } finally {
      _$MeetingStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void peerOperation(HMSPeer peer, HMSPeerUpdate update) {
    final _$actionInfo = _$MeetingStoreBaseActionController.startAction(
        name: 'MeetingStoreBase.peerOperation');
    try {
      return super.peerOperation(peer, update);
    } finally {
      _$MeetingStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void peerOperationWithTrack(
      HMSPeer peer, HMSTrackUpdate update, HMSTrack track) {
    final _$actionInfo = _$MeetingStoreBaseActionController.startAction(
        name: 'MeetingStoreBase.peerOperationWithTrack');
    try {
      return super.peerOperationWithTrack(peer, update, track);
    } finally {
      _$MeetingStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isSpeakerOn: ${isSpeakerOn},
screenSharePeerId: ${screenSharePeerId},
hmsException: ${hmsException},
hasHlsStarted: ${hasHlsStarted},
isHLSLink: ${isHLSLink},
roleChangeRequest: ${roleChangeRequest},
isMeetingStarted: ${isMeetingStarted},
isVideoOn: ${isVideoOn},
isMicOn: ${isMicOn},
isScreenShareOn: ${isScreenShareOn},
screenShareTrack: ${screenShareTrack},
curentScreenShareTrack: ${curentScreenShareTrack},
reconnecting: ${reconnecting},
reconnected: ${reconnected},
isRoomEnded: ${isRoomEnded},
isRecordingStarted: ${isRecordingStarted},
event: ${event},
hmsTrackChangeRequest: ${hmsTrackChangeRequest},
roles: ${roles},
peers: ${peers},
localPeer: ${localPeer},
localTrack: ${localTrack},
screenTrack: ${screenTrack},
isActiveSpeakerMode: ${isActiveSpeakerMode},
activeSpeakerPeerTracksStore: ${activeSpeakerPeerTracksStore},
tracks: ${tracks},
audioTracks: ${audioTracks},
messages: ${messages},
trackStatus: ${trackStatus},
audioTrackStatus: ${audioTrackStatus},
peerTracks: ${peerTracks},
observableMap: ${observableMap}
    ''';
  }
}
