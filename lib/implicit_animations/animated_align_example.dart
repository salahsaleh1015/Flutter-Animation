import 'package:flutter/material.dart';

class AnimatedAlignExample extends StatefulWidget {
  const AnimatedAlignExample({super.key});

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
  int _jerryAlignment = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Align Example"),
      ),
      body: Stack(
        children: [
          AnimatedAlign(
            alignment: getNewAlignment(_jerryAlignment),
            duration: const Duration(
              milliseconds: 400,
            ),
            child: Container(
              color: Colors.transparent,
              width: 100,
              height: 100,
              child: Image.asset("assets/images/jerry.png"),
            ),
          ),
          AnimatedAlign(
            alignment: getNewAlignment(_jerryAlignment + 1),
            duration: const Duration(
              milliseconds: 400,
            ),
            child: Container(
              color: Colors.transparent,
              width: 100,
              height: 100,
              child: Image.asset("assets/images/tom.png"),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _jerryAlignment = _jerryAlignment + 1;
          });
        },
        child: const Icon(
          Icons.animation,
        ),
      ),
    );
  }

  Alignment getNewAlignment(int align) {
    switch (align) {
      case 0:
        return Alignment.topLeft;
      case 1:
        return Alignment.topCenter;
      case 2:
        return Alignment.topRight;
      case 3:
        return Alignment.centerLeft;
      case 4:
        return Alignment.center;
      case 5:
        return Alignment.centerRight;
      case 6:
        return Alignment.bottomLeft;
      case 7:
        return Alignment.bottomCenter;
      case 8:
        return Alignment.bottomRight;
      default:
        _jerryAlignment = 0;
        return Alignment.center;
    }
  }
}
