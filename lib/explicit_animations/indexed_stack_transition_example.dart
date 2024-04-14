import 'package:flutter/material.dart';

class IndexedStackTransitionExample extends StatefulWidget {
  const IndexedStackTransitionExample({super.key});

  @override
  State<IndexedStackTransitionExample> createState() =>
      _IndexedStackTransitionExampleState();
}

class _IndexedStackTransitionExampleState
    extends State<IndexedStackTransitionExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late Animation<double> _scaleAnimation;
  late Animation<double> _fadeAnimation;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    _scaleAnimation = Tween(begin: 0.5, end: 1.0).animate(_controller);
    _fadeAnimation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _controller.forward();
    super.initState();
  }

  int _index = 0;

  _changeIndex() {
    _index ++;
    if(_index == 3){
      _index = 0;
    }
    setState(() {
      _controller.reset();
      _controller.forward();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Indexed Stack Transition"),
      ),
      body: IndexedStack(
          index: _index,
          children: [
        ScaleTransition(
          scale: _scaleAnimation,
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: Container(
              alignment: Alignment.center,
              color: Colors.red,
              child: Image.asset("assets/images/jerry.png"),
            ),
          ),
        ),
            ScaleTransition(
              scale: _scaleAnimation,
              child: Container(
                alignment: Alignment.center,
                color: Colors.blue,
                child: Image.asset("assets/images/tom.png"),
              ),
              ),
            ScaleTransition(
              scale: _scaleAnimation,
              child: Container(
                alignment: Alignment.center,
                color: Colors.green,
                child: Image.asset("assets/images/dog.png"),
              ),
            ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeIndex,
        child: const Icon(Icons.play_arrow_outlined),
      ),
    );
  }
}
