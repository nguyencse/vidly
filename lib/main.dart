import 'package:flutter/material.dart';
import 'package:vidly/resources/screens/videocall_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      home: VideoCallScreen(),
    );
  }
}