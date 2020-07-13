import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vidly/resources/common/icolor.dart';
import 'package:vidly/resources/widgets/custom_appbar.dart';

class VideoCallScreen extends StatefulWidget {
  @override
  _VideoCallScreenState createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends State<VideoCallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: false,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Image.asset(
                'lib/images/bg.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              child: customAppBar(),
              top: 0,
              left: 0,
              right: 0,
            ),
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.transparent,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      bottom: 24,
                      left: 0,
                      right: 0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 32),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                SizedBox(width: 56, height: 56, child: IconButton(icon: SvgPicture.asset('lib/images/flip.svg'), onPressed: () {})),
                                SizedBox(width: 56, height: 56, child: IconButton(icon: SvgPicture.asset('lib/images/mic.svg'), onPressed: () {})),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 90),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                SizedBox(
                                  width: 56,
                                  height: 56,
                                  child: IconButton(
                                    icon: SvgPicture.asset('lib/images/flip.svg'),
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(
                                  width: 56,
                                  height: 56,
                                  child: IconButton(
                                      icon: Stack(
                                        children: <Widget>[
                                          Positioned(
                                            top: 0,
                                            left: 0,
                                            right: 0,
                                            bottom: 0,
                                            child: SvgPicture.asset('lib/images/video.svg'),
                                          ),
                                          Positioned(
                                            top: 7,
                                            left: 7,
                                            right: 7,
                                            bottom: 7,
                                            child: SvgPicture.asset('lib/images/video_camera.svg'),
                                          ),
                                        ],
                                      ),
                                      onPressed: () {}),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 140),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(width: 56, height: 56, child: IconButton(icon: SvgPicture.asset('lib/images/endcall.svg'), onPressed: () {})),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget customAppBar() => CustomAppBar(
        color: Colors.transparent,
        centerTitle: true,
        leading: IconButton(icon: SvgPicture.asset('lib/images/arrow_left.svg'), onPressed: () {}),
        title: Column(
          children: <Widget>[
            Text(
              'Ashley Thompson',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Text('05:23', style: TextStyle(color: Colors.white, fontSize: 14)),
          ],
        ),
        actions: <Widget>[
          IconButton(icon: SvgPicture.asset('lib/images/add.svg'), onPressed: () {}),
          IconButton(icon: SvgPicture.asset('lib/images/message_circle.svg'), onPressed: () {}),
        ],
      );
}
