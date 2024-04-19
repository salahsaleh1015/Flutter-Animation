


import 'package:flutter/material.dart';

class PageFadeTransitions extends PageRouteBuilder{
  final dynamic child;

  PageFadeTransitions(this.child) : super(
    pageBuilder: (context, animation, secondaryAnimation) => child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return Align(
        alignment: Alignment.center,
        child: FadeTransition(
          opacity: animation,
          child: child,
        ),
      );
    },
  );

}