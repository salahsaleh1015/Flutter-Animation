import 'package:flutter/material.dart';

class AnimatedOpacityExample extends StatefulWidget {
  const AnimatedOpacityExample({super.key});

  @override
  State<AnimatedOpacityExample> createState() => _AnimatedOpacityExampleState();
}

class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample> {
  bool _isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Opacity Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedOpacity(
                duration: const Duration(milliseconds: 500),
                opacity: _isVisible ? 1.0 : 0.0,
                curve: Curves.easeInOutQuint,
                child: const Text(
                  "Animated Opacity !!",
                  style: TextStyle(fontSize: 30),
                )),
            AnimatedOpacity(
                duration: const Duration(milliseconds: 1500),
                opacity: _isVisible ? 1.0 : 0.0,
                curve: Curves.decelerate,
                child: Container(
                  height: 100,
                  color: Colors.transparent,
                  width: 100,
                  child: Image.asset("assets/images/jerry.png"),
                )),
            AnimatedOpacity(
                duration: const Duration(milliseconds: 2500),
                opacity: _isVisible ? 1.0 : 0.0,
                curve: Curves.bounceIn,
                child: Container(
                  height: 100,
                  color: Colors.transparent,
                  width: 100,
                  child: Image.asset("assets/images/tom.png"),
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isVisible = !_isVisible;
          });
        },
        child: Icon(_isVisible ? Icons.visibility : Icons.visibility_off),
      ),
    );
  }
}
