import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/material.dart';
import 'package:sept1_batch/clippersEx.dart';
import 'package:sept1_batch/expansionTileEx.dart';
void main(){
  runApp(MaterialApp(home: OnBoardingEx(),));
}
class OnBoardingEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
            title: "Page1",
            image: Align(
                alignment: Alignment.topCenter,
                child: Image.asset("assets/images/icon2.png")),
            body: "ghghjbhjghjhjghjgjhgjhghjgjhghjhgggjhg"),
        PageViewModel(
            title: "Page1",
            image: Align(
                alignment: Alignment.topCenter,
                child: Image.asset("assets/images/icon4.png")),
            body: "ghghjbhjghjhjghjgjhgjhghjgjhghjhgggjhg"),
        PageViewModel(
            title: "Page1",
            image: Align(
                alignment: Alignment.topCenter,
                child: Image.asset("assets/images/icon3.png")),
            body: "ghghjbhjghjhjghjgjhgjhghjgjhghjhgggjhg")
      ],
      onDone: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => ExpansionTileEx())),
      onSkip:  () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => ClippersEx())),
      showSkipButton: true,
      skip: const Text("Skip"),
      next: const Text("Next"),
      done: const Text("Continue"),
      dotsDecorator: const DotsDecorator(
        size: Size(20, 20),
        activeSize: Size(40, 20),
        color: Colors.black,
        activeColor: Colors.red,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))
        )
      ),
    );
  }
}
