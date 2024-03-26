


 import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  State<AnimatedContainerExample> createState() => _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  double width = 200;
  double height = 200;
  Color color = Colors.grey;
  double borderRadius = 40;

  changeAnimationValues() {
     width = 300;
     height = 300;
     color = Colors.blue;
     borderRadius = 90;
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Animated Container Example"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
           setState(() {
             changeAnimationValues();
           });
          },
          child: AnimatedContainer(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(
borderRadius
              ),
            ),
            duration: const Duration(milliseconds: 400),
            child: Image.asset("assets/images/jerry.png"),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(

        onPressed: () {
          setState(() {
             width = 200;
             height = 200;
             color = Colors.grey;
             borderRadius = 40;
          });
        },
        child: const Icon(
          Icons.animation,
        ),
      ),
    );
  }
}

