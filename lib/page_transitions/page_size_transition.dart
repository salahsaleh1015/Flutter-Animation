import 'package:flutter/material.dart';

class PageSizeTransitions extends PageRouteBuilder {
  final dynamic child;

  PageSizeTransitions(this.child)
      : super(
    pageBuilder: (context, animation, secondaryAnimation) => child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {

      return Align(
        alignment: Alignment.center,
        child: SizeTransition(
        sizeFactor: animation,
          child: child,
        ),
      );
    },
  );
}
