


import 'package:flutter/material.dart';


class AnimatedDefaultTextExample extends StatefulWidget {
  const AnimatedDefaultTextExample({super.key});

  @override
  State<AnimatedDefaultTextExample> createState() => _AnimatedDefaultTextExampleState();
}

class _AnimatedDefaultTextExampleState extends State<AnimatedDefaultTextExample> {
  double _fontSize = 15;
  Color _color = Colors.grey;

  doAnimation() {
    setState(() {
    _fontSize = 30;
    _color = Colors.blue;
    });
  }
  resetAnimation() {
    setState(() {
       _fontSize = 15;
       _color = Colors.grey;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Animated Default Text Example"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedDefaultTextStyle(
              curve: Curves.easeInCirc,
              style: TextStyle(
            fontSize: _fontSize,
            color: _color,

          ), duration: const Duration(milliseconds: 400), child: const Text(" Hello Flutter Animations ")),
         const SizedBox(
            height: 20,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){
                setState(() {
                  doAnimation();
                });
              }, icon: const Icon(Icons.add)),
              IconButton(onPressed: (){
                setState(() {

                  resetAnimation();
                });
              }, icon: const Icon(Icons.remove))
            ],
          )

        ],
      ),
    );
  }
}
