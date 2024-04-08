import 'package:flutter/material.dart';

class PositionedTransitionExample extends StatefulWidget {
  const PositionedTransitionExample({super.key});

  @override
  State<PositionedTransitionExample> createState() =>
      _PositionedTransitionExampleState();
}

class _PositionedTransitionExampleState
    extends State<PositionedTransitionExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late Animation<RelativeRect> _jerryAnimation;
  late Animation<RelativeRect> _tomAnimation;
  late Animation<RelativeRect> _spikeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _jerryAnimation = RelativeRectTween(
      begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
      end: const RelativeRect.fromLTRB(250, 250, 0, 0),
    ).animate(_controller);

    _tomAnimation = RelativeRectTween(
      begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
      end: const RelativeRect.fromLTRB(150, 150, 0, 0),
    ).animate(_controller);

    _spikeAnimation = RelativeRectTween(
      begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
      end: const RelativeRect.fromLTRB(50, 50, 0, 0),
    ).animate(_controller);
  }

  void _startAnimation() {
    _controller.reset();
    _controller.forward();
  }
  void _reverseAnimation(){
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
        title: const Text("Positioned Transition Example"),
      ),
      body: Stack(
        children: [

          PositionedTransition(
            rect: _spikeAnimation,
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
          ),
          PositionedTransition(
            rect: _tomAnimation,
            child: Container(
              color: Colors.grey,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Image.asset(
                  "assets/images/tom.png",
                ),
              ),
            ),
          ),
          PositionedTransition(
            rect: _jerryAnimation,
            child: Container(
              color: Colors.orange,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Image.asset(
                  "assets/images/jerry.png",
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: _startAnimation, child:const Icon(Icons.play_arrow)),
                ElevatedButton(onPressed: _reverseAnimation, child:const Icon(Icons.pause)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
