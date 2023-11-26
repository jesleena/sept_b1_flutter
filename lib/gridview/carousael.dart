import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Carousel(),));
}
class Carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(items: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/pic7.jpg"))),
        ),
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/pic6.jpg"),
                  fit: BoxFit.fill)),
        ),
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/pic12.jpg"),
                  fit: BoxFit.fill)),
        ),
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/pic2.jpg"),
                  fit: BoxFit.fill)),
        ),
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/pic3.jpg"),
                  fit: BoxFit.fill)),
        ),
      ], options: CarouselOptions(
        height: double.infinity,
        aspectRatio: 16/9,
        viewportFraction: 1,
        initialPage: 1,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayCurve: Curves.linear,
        autoPlayInterval: Duration(seconds: 2),
        pauseAutoPlayOnTouch: true,

      )),
    );
  }
}
