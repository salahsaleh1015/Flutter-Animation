import 'package:flutter/material.dart';

class AnimatedCrossFadeExample extends StatefulWidget {
  const AnimatedCrossFadeExample({super.key});

  @override
  State<AnimatedCrossFadeExample> createState() =>
      _AnimatedCrossFadeExampleState();
}

class _AnimatedCrossFadeExampleState extends State<AnimatedCrossFadeExample> {
  bool _isFirstCrossFadeVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedCrossFade Example"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _isFirstCrossFadeVisible = !_isFirstCrossFadeVisible;
            });
          },
          child: AnimatedCrossFade(
            crossFadeState: _isFirstCrossFadeVisible
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            firstCurve: Curves.easeIn,
            secondCurve: Curves.bounceOut,
            duration: Duration(seconds: 1),
            firstChild: Container(
              height: 200,
              width: 200,
              color: Colors.blueGrey,
              child: Image.asset("assets/images/dog.png"),
            ),
            secondChild: Container(
              height: 200,
              width: 200,
              color: Colors.blueGrey,
              child: Image.asset("assets/images/jerry.png"),
            ),
          ),
        ),
      ),
    );
  }
}
