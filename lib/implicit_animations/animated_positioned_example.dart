import 'package:flutter/material.dart';

class AnimatedPositionedExample extends StatefulWidget {
  const AnimatedPositionedExample({super.key});

  @override
  State<AnimatedPositionedExample> createState() =>
      _AnimatedPositionedExampleState();
}

class _AnimatedPositionedExampleState extends State<AnimatedPositionedExample> {
bool _isArrived = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedPositionedExample"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            AnimatedPositioned(
                duration: const Duration(seconds: 1),
                top: 0,
                left: 0,
                child: SizedBox(
                  height: 120,
                  width: 120,
                  child: Image.asset("assets/images/cheese.png"),
                )),
            AnimatedPositioned(
                duration: const Duration(seconds: 1),
                top:_isArrived? 0 : MediaQuery.of(context).size.height - 250,
                left: 0,
                child: SizedBox(
                  height: 120,
                  width: 120,
                  child: Image.asset("assets/images/tom.png"),
                )),
            AnimatedPositioned(
                duration: const Duration(milliseconds: 400),
                top: _isArrived? 0 :MediaQuery.of(context).size.width/2,
                left:_isArrived? 0 : MediaQuery.of(context).size.width/2,
                child: SizedBox(
                  height: 120,
                  width: 120,
                  child: Image.asset("assets/images/dog.png"),
                )),
            AnimatedPositioned(
                duration: const Duration(seconds: 1),
                top: 0,
                left: _isArrived? 0 :MediaQuery.of(context).size.width-150,
                child: SizedBox(
                  height: 120,
                  width: 120,
                  child: Image.asset("assets/images/jerry.png"),
                )),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            _isArrived = !_isArrived;
          });
        },
        child: Icon(Icons.location_on),
      ),
    );
  }
}
