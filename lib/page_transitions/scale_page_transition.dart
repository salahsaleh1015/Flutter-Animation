import 'package:flutter/material.dart';

class PageScaleTransitions extends PageRouteBuilder {
  final dynamic child;

  PageScaleTransitions(this.child)
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => child,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var tween =
                Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
              curve: Curves.bounceInOut,
              parent: animation,
            ));

            return ScaleTransition(scale: tween,alignment: Alignment.center, child: child,);
          },
        );
}
