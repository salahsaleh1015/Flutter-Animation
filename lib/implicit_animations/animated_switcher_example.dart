import 'package:flutter/material.dart';

class AnimatedSwitcherExample extends StatefulWidget {
  const AnimatedSwitcherExample({super.key});

  @override
  State<AnimatedSwitcherExample> createState() =>
      _AnimatedSwitcherExampleState();
}

class _AnimatedSwitcherExampleState extends State<AnimatedSwitcherExample> {
  bool _isFirstCrossFadeVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Switcher Example"),
      ),
      body: Center(
          child: AnimatedSwitcher(
        duration: const Duration(seconds: 1),
        switchInCurve: Curves.bounceInOut,
        switchOutCurve: Curves.decelerate,
        child: _isFirstCrossFadeVisible
            ? ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isFirstCrossFadeVisible = !_isFirstCrossFadeVisible;
                  });
                },
                child: const Text("Login !"))
            : const CircularProgressIndicator(),
      )),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.switch_left_rounded),
          onPressed: () {
            setState(() {
              _isFirstCrossFadeVisible = !_isFirstCrossFadeVisible;
            });
          }),
    );
  }
}
