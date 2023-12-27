import 'package:art_directory/utils/dimension.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  const ResponsiveLayout({ Key? key, required this.webScreenLayout, required this.mobileScreenLayout }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth > webScreenSize) {
          //Web Screen
          return webScreenLayout;
        }
        //Mobile Screen
        return mobileScreenLayout;
      }
    );
  }
}