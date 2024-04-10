
import 'package:flutter/material.dart';

 class FadeTransitionExample extends StatefulWidget {
   const FadeTransitionExample({super.key});

   @override
   State<FadeTransitionExample> createState() => _FadeTransitionExampleState();
 }

 class _FadeTransitionExampleState extends State<FadeTransitionExample> with SingleTickerProviderStateMixin {
 late AnimationController _controller;
 late Animation<double> _animation;
 _startAnimation() {
   _controller.reset();
   _controller.forward();
 }
 @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    super.initState();
  }
   @override
   Widget build(BuildContext context) {
     return  Scaffold(

       appBar: AppBar(
         title: const Text("Rotation Transition Example"),
       ),
       body: Center(
         child: FadeTransition(
           opacity: _animation,
           child: Container(
             color: Colors.blue,
             width: 200,
              height: 200,
             child: const Center(child: Text("Fade Me Now !!", style: TextStyle(color: Colors.white,fontSize: 25),)),
           )
         )
       ),
       floatingActionButton: FloatingActionButton(
         backgroundColor: Colors.blue,
         onPressed: _startAnimation,
         child:const Icon(Icons.play_arrow),
       ),
     );
   }
 }
