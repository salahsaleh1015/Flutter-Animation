import 'package:flutter/material.dart';

class AnimatedPaddingExample extends StatefulWidget {
  const AnimatedPaddingExample({super.key});

  @override
  State<AnimatedPaddingExample> createState() => _AnimatedPaddingExampleState();
}

class _AnimatedPaddingExampleState extends State<AnimatedPaddingExample> {
  double _paddingValue = 10.0;
  List<String> characters = [
    "tom",
    "jerry",
    "dog",
    "cheese",
  ];
  bool _isExpand = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Padding Example"),
      ),
      body: Center(
        child: GridView.count(crossAxisCount: 2, children: List.generate(4, (index){
          return AnimatedPadding(
            duration: const Duration(milliseconds: 500),
            padding: EdgeInsets.all(_paddingValue),
            curve: Curves.linear,
            child: Container(
                color: Colors.grey,
                width: 100,
                height: 100,
                child: Image.asset("assets/images/${characters[index]}.png")),


          );
        })),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isExpand = !_isExpand;
            _paddingValue = _isExpand ? 30.0 : 10.0;
          });
        },
        child: Icon(_isExpand ? Icons.expand : Icons.expand_less),
      ),
    );
  }
}
