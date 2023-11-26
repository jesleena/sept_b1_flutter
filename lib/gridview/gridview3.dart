import 'package:flutter/material.dart';
import 'package:sept1_batch/gridview/mywidget.dart';

void main() {
  runApp(MaterialApp(
    home: Gridview3(),
  ));
}

class Gridview3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
      crossAxisCount: 4,
      children: List.generate(
          20,
          (index) => MyWidget(
              label: Text("Hello"),
              onpressed: () {},
              bgcolor: Colors.cyan,
              image: Image.asset("assets/images/pic1.jpg"))),
    ));
  }
}
