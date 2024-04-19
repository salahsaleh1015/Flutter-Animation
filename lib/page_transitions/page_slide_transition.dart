import 'package:flutter/material.dart';

class PageSlideTransitions extends PageRouteBuilder {
  final dynamic child;

  PageSlideTransitions(this.child)
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => child,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var tween =
                Tween<Offset>(begin: const Offset(0.0, 1.0), end: Offset.zero);
            var offsetAnimation = animation.drive(tween);
            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
        );
}
