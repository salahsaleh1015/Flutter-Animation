


import 'package:flutter/material.dart';

class PageMixFadeSizeTransitions extends PageRouteBuilder{
  final dynamic child;

  PageMixFadeSizeTransitions(this.child) : super(
    pageBuilder: (context, animation, secondaryAnimation) => child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return Align(
        alignment: Alignment.center,
        child: FadeTransition(
          opacity: animation,
          child: SizeTransition(
            sizeFactor: animation,
            child: child,
          ),
        ),
      );
    },
  );

}