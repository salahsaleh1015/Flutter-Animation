import 'package:flutter/material.dart';

class AnimatedPositionedDirectionalExample extends StatefulWidget {
  const AnimatedPositionedDirectionalExample({super.key});

  @override
  State<AnimatedPositionedDirectionalExample> createState() =>
      _AnimatedPositionedDirectionalExampleState();
}

class _AnimatedPositionedDirectionalExampleState
    extends State<AnimatedPositionedDirectionalExample> {
  double _start = 0;
  double _top = 0;
  left() {
    setState(() {
      _start -= 50;
      if (_start < 0) {
        _start = 0;
      }
    });
  }
  right(){
      setState(() {

        _start +=50;
        if(_start > MediaQuery.of(context).size.width- 120){

          _start = MediaQuery.of(context).size.width - 120;
        }
      });

  }
  down(){
    setState(() {
      _top += 50;
      if (_top > MediaQuery.of(context).size.height- 320) {
        _top = MediaQuery.of(context).size.height - 320;
      }
    });
  }
  up(){
    setState(() {
      _top -= 50;
      if (_top < 0) {

        _top = 0;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Positioned Directional Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            AnimatedPositionedDirectional(
               start:_start,
              top: _top,
              duration: const Duration(seconds: 1),
              child: SizedBox(
                width: 120,
                height: 120,
                child: Image.asset('assets/images/jerry.png'),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        left();
                      });
                    },
                    child: const Icon(Icons.arrow_circle_left_outlined),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                      right();
                      });
                    },
                    child: const Icon(Icons.arrow_circle_right_outlined),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
down();
                      });
                    },
                    child: const Icon(Icons.arrow_circle_down_outlined),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
up();
                      });
                    },
                    child: const Icon(Icons.arrow_circle_up_outlined),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
