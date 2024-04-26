import 'package:flutter/material.dart';
import 'package:flutter_animation/explicit_animations/animation_builder_example.dart';
import 'package:flutter_animation/explicit_animations/default_text_style_transition_example.dart';
import 'package:flutter_animation/explicit_animations/fade_transition_example.dart';
import 'package:flutter_animation/explicit_animations/indexed_stack_transition_example.dart';
import 'package:flutter_animation/explicit_animations/positioned_directional_transition_example.dart';
import 'package:flutter_animation/explicit_animations/positioned_transition_example.dart';
import 'package:flutter_animation/explicit_animations/rotation_transition_example.dart';
import 'package:flutter_animation/explicit_animations/size_transition_example.dart';
import 'package:flutter_animation/explicit_animations/tween_animation_builder_example.dart';
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
import 'package:flutter_animation/more_animations/custom_painter_example.dart';
import 'package:flutter_animation/more_animations/lottie_slider_example.dart';
import 'package:flutter_animation/page_transitions/page_fade_transitions.dart';
import 'package:flutter_animation/page_transitions/page_mix_fade_size_transition.dart';
import 'package:flutter_animation/page_transitions/page_mix_scale_rotation_transition.dart';
import 'package:flutter_animation/page_transitions/page_rotation_transition.dart';
import 'package:flutter_animation/page_transitions/page_size_transition.dart';
import 'package:flutter_animation/page_transitions/page_slide_transition.dart';
import 'package:flutter_animation/page_transitions/page_two.dart';
import 'package:flutter_animation/page_transitions/scale_page_transition.dart';
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
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff97cadb)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const AnimatedAlignExample()));
                  },
                  child: const Text(
                    "Animated Align Example",
                    style: TextStyle(color: Colors.black),
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff97cadb)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const AnimatedContainerExample()));
                  },
                  child: const Text(
                    "Animated Container Example",
                    style: TextStyle(color: Colors.black),
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff97cadb)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const AnimatedDefaultTextExample()));
                  },
                  child: const Text(
                    "Animated Default Text Example",
                    style: TextStyle(color: Colors.black),
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff97cadb)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const AnimatedOpacityExample()));
                  },
                  child: const Text(
                    "Animated Opacity  Example",
                    style: TextStyle(color: Colors.black),
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff97cadb)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const AnimatedPaddingExample()));
                  },
                  child: const Text(
                    "Animated Padding Example",
                    style: TextStyle(color: Colors.black),
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff97cadb)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const AnimatedPhysicalModelExample()));
                  },
                  child: const Text(
                    "Animated Physical Model Example",
                    style: TextStyle(color: Colors.black),
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff97cadb)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const AnimatedPositionedExample()));
                  },
                  child: const Text(
                    "Animated Positioned Example",
                    style: TextStyle(color: Colors.black),
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff97cadb)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const AnimatedPositionedDirectionalExample()));
                  },
                  child: const Text(
                    "Animated Positioned Directional Example",
                    style: TextStyle(color: Colors.black),
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff97cadb)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const AnimatedCrossFadeExample()));
                  },
                  child: const Text(
                    "Animated Cross Fade Example",
                    style: TextStyle(color: Colors.black),
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff97cadb)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const AnimatedSwitcherExample()));
                  },
                  child: const Text(
                    "Animated Switcher Example",
                    style: TextStyle(color: Colors.black),
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff97cadb)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AnimatedListExample()));
                  },
                  child: const Text(
                    "Animated List Example",
                    style: TextStyle(color: Colors.black),
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff018abe)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const PositionedTransitionExample()));
                  },
                  child: const Text(
                    "Positioned Transition Example",
                    style: TextStyle(color: Colors.black),
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff018abe)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const SizeTransitionExample()));
                  },
                  child: const Text(
                    "Size Transition Example",
                    style: TextStyle(color: Colors.black),
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff018abe)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const RotationTransitionExample()));
                  },
                  child: const Text(
                    "Rotation Transition Example",
                    style: TextStyle(color: Colors.black),
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff018abe)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const AnimationBuilderExample()));
                  },
                  child: const Text(
                    "Animation Builder Example",
                    style: TextStyle(color: Colors.black),
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff018abe)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const FadeTransitionExample()));
                  },
                  child: const Text(
                    "Fade Transition Example",
                    style: TextStyle(color: Colors.black),
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff018abe)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const PositionedDirectionalTransitionExample()));
                  },
                  child: const Text(
                    "Positioned Directional Transition Example",
                    style: TextStyle(color: Colors.black),
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff018abe)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const TweenAnimationBuilderExample()));
                  },
                  child: const Text(
                    "Tween Animation Builder Example",
                    style: TextStyle(color: Colors.black),
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff018abe)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const DefaultTextStyleTransitionExample()));
                  },
                  child: const Text(
                    "Default Text Style Transition Example",
                    style: TextStyle(color: Colors.black),
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff018abe)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const IndexedStackTransitionExample()));
                  },
                  child: const Text(
                    "Indexed Stack Transition Example",
                    style: TextStyle(color: Colors.black),
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff02457a)),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(PageFadeTransitions(const PageTwo()));
                  },
                  child: const Text(
                    "Page Fade Transition",
                    style: TextStyle(color: Colors.black),
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff02457a)),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(PageScaleTransitions(const PageTwo()));
                  },
                  child: const Text(
                    "Page Scale Transition",
                    style: TextStyle(color: Colors.black),
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff02457a)),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(PageRotationTransitions(const PageTwo()));
                  },
                  child: const Text(
                    "Page Rotation Transition",
                    style: TextStyle(color: Colors.black),
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff02457a)),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(PageSlideTransitions(const PageTwo()));
                  },
                  child: const Text(
                    "Page Slide Transition",
                    style: TextStyle(color: Colors.black),
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff02457a)),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(PageSizeTransitions(const PageTwo()));
                  },
                  child: const Text(
                    "Page Size Transition",
                    style: TextStyle(color: Colors.black),
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(const Color(0xff02457a)),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(PageMixFadeSizeTransitions(const PageTwo()));
                  },
                  child: const Text(
                    "Page Mix Fade Size Transitions",
                    style: TextStyle(color: Colors.black),
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(const Color(0xff02457a)),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(PageMixScaleRotationTransitions(const PageTwo()));
                  },
                  child: const Text(
                    "Page Mix Scale Rotation Transitions",
                    style: TextStyle(color: Colors.black),
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(const Color(0xff001b48)),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const CustomPainterExample()));
                  },
                  child: const Text(
                    "Custom Painter Example",
                    style: TextStyle(color: Colors.black),
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(const Color(0xff001b48)),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const LottieSliderExample()));
                  },
                  child: const Text(
                    "Lottie Slider Example",
                    style: TextStyle(color: Colors.black),
                  )),

            ],
          ),
        ),
      ),
    );
  }
}
