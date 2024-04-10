import 'package:flutter/material.dart';

class PositionedDirectionalTransitionExample extends StatefulWidget {
  const PositionedDirectionalTransitionExample({super.key});

  @override
  State<PositionedDirectionalTransitionExample> createState() =>
      _PositionedDirectionalTransitionExampleState();
}

class _PositionedDirectionalTransitionExampleState
    extends State<PositionedDirectionalTransitionExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<RelativeRect> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _animation = RelativeRectTween(
      begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
      end: const RelativeRect.fromLTRB(100, 100, 0, 0),
    ).animate(_controller);
  }

  void _startAnimation() {
    _controller.reset();
    _controller.forward();
  }

  void _reverseAnimation() {
    _controller.reverse();
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
        title: const Text("Positioned Directional Transition Example"),
      ),
      body: Stack(
        children: [
          AnimatedBuilder(
              animation: _controller,
              builder: (BuildContext context, Widget? child) {
                return PositionedDirectional(
                  top: _animation.value.top,
                  start: _animation.value.left,
                  bottom: _animation.value.bottom,
                  end: _animation.value.right,
                  child: Container(
                    color: Colors.blueGrey,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Image.asset(
                        "assets/images/dog.png",
                      ),
                    ),
                  ),
                );
              }),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: _startAnimation,
                    child: const Icon(Icons.play_arrow)),
                ElevatedButton(
                    onPressed: _reverseAnimation,
                    child: const Icon(Icons.pause)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
