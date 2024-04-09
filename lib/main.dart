import 'package:flutter/material.dart';
import 'package:flutter_animation/explicit_animations/positioned_transition_example.dart';
import 'package:flutter_animation/explicit_animations/rotation_transition_example.dart';
import 'package:flutter_animation/explicit_animations/size_transition_example.dart';
import 'package:flutter_animation/implicit_animations/AnimatedOpacityExample.dart';
import 'package:flutter_animation/implicit_animations/animated_align_example.dart';
import 'package:flutter_animation/implicit_animations/animated_container.dart';
import 'package:flutter_animation/implicit_animations/animated_cross_fadeExample.dart';
import 'package:flutter_animation/implicit_animations/animated_default_text.dart';
import 'package:flutter_animation/implicit_animations/animated_list_example.dart';
import 'package:flutter_animation/implicit_animations/animated_padding_example.dart';
import 'package:flutter_animation/implicit_animations/animated_physical_model.dart';
import 'package:flutter_animation/implicit_animations/animated_positioned_example.dart';
import 'package:flutter_animation/implicit_animations/animated_switcher_example.dart';
import 'implicit_animations/animated_positioned_directional_example.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter animation",
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}


//#02457a
//#001b48
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("animation topics"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            children: [
              ElevatedButton(
                style:ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(const Color(0xff97cadb)),
                ) ,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AnimatedAlignExample()));
                  },
                  child: const Text("Animated Align Example", style: TextStyle(color: Colors.black),)),
              ElevatedButton(
                  style:ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color(0xff97cadb)),
                  ) ,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const AnimatedContainerExample()));
                  },
                  child: const Text("Animated Container Example" ,style: TextStyle(color: Colors.black),)),
              ElevatedButton(
                  style:ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color(0xff97cadb)),
                  ) ,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const AnimatedDefaultTextExample()));
                  },
                  child: const Text("Animated Default Text Example", style: TextStyle(color: Colors.black),)),
              ElevatedButton(
                  style:ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color(0xff97cadb)),
                  ) ,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const AnimatedOpacityExample()));
                  },
                  child: const Text("Animated Opacity  Example", style: TextStyle(color: Colors.black),)),
              ElevatedButton(
                  style:ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color(0xff97cadb)),
                  ) ,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const AnimatedPaddingExample()));
                  },
                  child: const Text("Animated Padding Example", style: TextStyle(color: Colors.black),)),
              ElevatedButton(
                  style:ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color(0xff97cadb)),
                  ) ,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const AnimatedPhysicalModelExample()));
                  },
                  child: const Text("Animated Physical Model Example", style: TextStyle(color: Colors.black),)),
              ElevatedButton(
                  style:ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color(0xff97cadb)),
                  ) ,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const AnimatedPositionedExample()));
                  },
                  child: const Text("Animated Positioned Example", style: TextStyle(color: Colors.black),)),
              ElevatedButton(
                  style:ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color(0xff97cadb)),
                  ) ,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const AnimatedPositionedDirectionalExample()));
                  },
                  child: const Text("Animated Positioned Directional Example", style: TextStyle(color: Colors.black),)),
              ElevatedButton(
                  style:ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color(0xff97cadb)),
                  ) ,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const AnimatedCrossFadeExample()));
                  },
                  child: const Text("Animated Cross Fade Example", style: TextStyle(color: Colors.black),)),
              ElevatedButton(
                  style:ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color(0xff97cadb)),
                  ) ,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const AnimatedSwitcherExample()));
                  },
                  child: const Text("Animated Switcher Example", style: TextStyle(color: Colors.black),)),
              ElevatedButton(
                  style:ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color(0xff97cadb)),
                  ) ,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const AnimatedListExample()));
                  },
                  child: const Text("Animated List Example", style: TextStyle(color: Colors.black),)),
              ElevatedButton(
                  style:ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color(0xff018abe)),
                  ) ,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const PositionedTransitionExample()));
                  },
                  child: const Text("Positioned Transition Example", style: TextStyle(color: Colors.black),)),
              ElevatedButton(
                  style:ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color(0xff018abe)),
                  ) ,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const SizeTransitionExample()));
                  },
                  child: const Text("Size Transition Example", style: TextStyle(color: Colors.black),)),
              ElevatedButton(
                  style:ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color(0xff018abe)),
                  ) ,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const RotationTransitionExample()));
                  },
                  child: const Text("Rotation Transition Example", style: TextStyle(color: Colors.black),)),


            ],
          ),
        ),
      ),
    );
  }
}
