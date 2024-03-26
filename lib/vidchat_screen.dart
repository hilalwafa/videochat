import 'package:flutter/cupertino.dart';
import 'package:zego_uikit_prebuilt_video_conference/zego_uikit_prebuilt_video_conference.dart';

class VideoChatScreen extends StatelessWidget {
  final String conference_id;
  final String user_id;
  const VideoChatScreen({super.key,
    required this.conference_id,
    required this.user_id});

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltVideoConference(
        appID: 71330144,
        appSign: "f3726e4367db784fe498273a0bfc280f39a3de7e9280208aaac29e2dc41ad8bf",
        conferenceID: conference_id,
        userID: user_id,
        userName: 'user $user_id',
        config: ZegoUIKitPrebuiltVideoConferenceConfig(
          turnOnMicrophoneWhenJoining: false,
        )
    );
  }
}
