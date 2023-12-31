import 'package:flutter/material.dart';
import 'package:instagram/responsiveness/mobile_screen_layout.dart';
import 'package:instagram/responsiveness/responsive_layout.dart';
import 'package:instagram/responsiveness/web_screen_layout.dart';
import 'package:instagram/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      home: const ResponsiveLayout(mobileScreenLayout: MobileScreenLayout(), webScreenLayout:WebScreenLayout() ,),
    );
  }
}