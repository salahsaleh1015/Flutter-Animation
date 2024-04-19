import 'package:flutter/material.dart';

class PageRotationTransitions extends PageRouteBuilder {
  final dynamic child;

  PageRotationTransitions(this.child)
      : super(
    pageBuilder: (context, animation, secondaryAnimation) => child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var tween =
      Tween<double>(begin: 0.0, end: 4.0).animate(CurvedAnimation(
        curve: Curves.bounceInOut,
        parent: animation,
      ));

      return RotationTransition(turns: tween,alignment: Alignment.center, child: child,);
    },
  );
}
