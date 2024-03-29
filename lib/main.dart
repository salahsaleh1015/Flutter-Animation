import 'package:flutter/material.dart';
import 'package:flutter_animation/implicit_animations/animated_align_example.dart';
import 'package:flutter_animation/implicit_animations/animated_container.dart';
import 'package:flutter_animation/implicit_animations/animated_default_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      title: "flutter animation",
      debugShowCheckedModeBanner: false,
      home: MainPage(),
     theme: ThemeData(
       primarySwatch: Colors.blue,
     ),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("animation topics"),
      ),
      body: Center(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AnimatedAlignExample()));
                },
                child: const Text("Animated Align Example")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AnimatedContainerExample()));
                },
                child: const Text("Animated Container Example")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AnimatedDefaultTextExample()));
                },
                child: const Text("Animated Default Text Example")),

          ],
        ),
      ),
    );
  }
}
