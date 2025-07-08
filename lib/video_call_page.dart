import 'package:flutter/cupertino.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

import 'constant.dart';

class VideoCallPage extends StatelessWidget {
  const VideoCallPage({Key? key, required this.callID, required this.userID}) : super(key: key);
  final String callID;
  final String userID;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: Constant.appID,
      appSign: Constant.appSign,
      userID: userID,
      userName: userID,
      callID: callID,
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
