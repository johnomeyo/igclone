import 'package:flutter/material.dart';
import 'package:instagram/responsiveness/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {super.key,
      required this.webScreenLayout,
      required this.mobileScreenLayout});
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > webScreen) {
          //show a web screen
          return webScreenLayout;
        }
        // show the mobile screen
        return mobileScreenLayout;
      },
    );
  }
}
