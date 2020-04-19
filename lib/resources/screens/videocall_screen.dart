import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vidly/resources/widgets/custom_appbar.dart';

class VideoCallScreen extends StatefulWidget {
  @override
  _VideoCallScreenState createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends State<VideoCallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: SafeArea(
        child: Container(
          child: Text('Video Call'),
        ),
      ),
    );
  }

  Widget customAppBar() => CustomAppBar(
    centerTitle: true,
    leading: IconButton(icon: SvgPicture.asset('lib/images/arrow_left.svg'), onPressed: (){}),
    title: Column(
      children: <Widget>[
        Text('Ashley Thompson', style: TextStyle(color: Colors.white, fontSize: 18),),
        Text('05:23', style: TextStyle(color: Colors.white, fontSize: 14)),
      ],
    ),
    actions: <Widget>[
      IconButton(icon: SvgPicture.asset('lib/images/add.svg'), onPressed: (){}),
      IconButton(icon: SvgPicture.asset('lib/images/message_circle.svg'), onPressed: (){}),
    ],
  );
}
