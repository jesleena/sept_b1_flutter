import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Carousel()));
}
class Carousel extends StatelessWidget {
  var images = [
    "assets/images/pic3.jpg",
    "assets/images/pic2.jpg",
    "assets/images/pic12.jpg",
    "assets/images/pic6.jpg",
    "assets/images/pic7.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
          items: List.generate(5,
              (index) => Container(
                    decoration: BoxDecoration(
                        image:
                            DecorationImage(image: AssetImage(images[index]),fit: BoxFit.fill)),
                  )),
          options: CarouselOptions(
              height: double.infinity,
              viewportFraction: .8,
              aspectRatio: 16/9,
              initialPage: 1,
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 2),
              autoPlayCurve: Curves.linear,
              pauseAutoPlayOnTouch: true)),
    );
  }
}
