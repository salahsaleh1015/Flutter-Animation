import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieSliderExample extends StatefulWidget {
  const LottieSliderExample({super.key});

  @override
  State<LottieSliderExample> createState() => _LottieSliderExampleState();
}

class _LottieSliderExampleState extends State<LottieSliderExample> {
  List<String> imagesPath = [
    "assets/lottie/tigger.json",
    "assets/lottie/bird.json",
    "assets/lottie/car.json",
  ];
  PageController pageController = PageController();
  int currentPage = 0;

  @override
  void initState() {
    startAnimation();
    super.initState();
  }
  @override
  void dispose() {
    stopAnimation();
    super.dispose();
  }
  void stopAnimation(){
    pageController.dispose();
  }
  void startAnimation(){
    Future.delayed(const Duration(seconds: 3)).then((value){
      if(currentPage == imagesPath.length - 1){
        pageController.animateToPage(0,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn);
      }else{
        pageController.nextPage(
           curve: Curves.easeIn,
          duration: const Duration(milliseconds: 500),
        );
      }
      startAnimation();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lottie Slider"),
      ),
      body: Center(
        child: PageView.builder(
          itemCount: imagesPath.length,
          onPageChanged: (int index) {
            setState(() {
              currentPage = index;
            });
          },
          itemBuilder: (context, index) {
            return Lottie.asset(
              imagesPath[index],
              reverse: false,
              repeat: true,
            );
          },
          controller: pageController,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(

        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.animation), label: "animation 1"),
          BottomNavigationBarItem(
              icon: Icon(Icons.animation), label: "animation 2"),
          BottomNavigationBarItem(
              icon: Icon(Icons.animation), label: "animation 3"),
        ],
        onTap: (int page) {
          pageController.animateToPage(page,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn);
        },
        currentIndex: currentPage,
      ),
    );
  }
}
