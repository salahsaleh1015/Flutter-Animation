




import 'package:flutter/material.dart';

class AnimatedPhysicalModelExample extends StatefulWidget {
  const AnimatedPhysicalModelExample({super.key});

  @override
  State<AnimatedPhysicalModelExample> createState() => _AnimatedPhysicalModelExampleState();
}

class _AnimatedPhysicalModelExampleState extends State<AnimatedPhysicalModelExample> {
  bool _isPressed = false;
  _toggle() {
    setState(() {
      _isPressed = !_isPressed;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: (){
              _toggle();
            },
            child: AnimatedPhysicalModel(
              shape: BoxShape.circle,
              elevation:_isPressed? 90: 10,
              color: Colors.grey,
              shadowColor: Colors.blue,
              duration: Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: Container(
                color: Colors.blue,
                height: 200,
                width: 200,
                child: Image.asset("assets/images/tom.png"),
              ),
            ),
          ),
        )
    );
  }
}

