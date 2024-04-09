import 'package:flutter/material.dart';
import 'dart:math' show pi;

class AnimationBuilderExample extends StatefulWidget {
  const AnimationBuilderExample({super.key});

  @override
  State<AnimationBuilderExample> createState() =>
      _AnimationBuilderExampleState();
}

class _AnimationBuilderExampleState extends State<AnimationBuilderExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 20),
    )..repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation Builder Example"),
      ),
      body: Center(
        child: AnimatedBuilder(animation: _controller, builder:(BuildContext context, Widget? child){
          return Transform.rotate(
            angle: _controller.value * 2 * pi,
            child: Container(
              color: Colors.transparent,
              width: 200,
              height: 200,
              child: Image.asset("assets/images/dog.png"),
            ),
          );
        }),

      ),
    );
  }
}
