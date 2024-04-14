import 'package:flutter/material.dart';

class TweenAnimationBuilderExample extends StatefulWidget {
  const TweenAnimationBuilderExample({super.key});

  @override
  State<TweenAnimationBuilderExample> createState() =>
      _TweenAnimationBuilderExampleState();
}

class _TweenAnimationBuilderExampleState
    extends State<TweenAnimationBuilderExample> {
  double _opacity = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tween Animation Builder"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TweenAnimationBuilder(
                  tween: Tween<double>(begin: 0.0, end: _opacity),
                  duration: const Duration(seconds: 2),
                  builder: (context, value, child) {
                    return Opacity(

                      opacity: value,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(_opacity * value * 36),
                          color: Colors.blue,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        height: 200,
                        width: 200,
                      ),
                    );
                  }),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _opacity = _opacity == 0.0 ? 1.0 : 0.0;
                    });
                  },
                  child: const Text("Fade Me !!"))
            ],
          ),
        ));
  }
}
