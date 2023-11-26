import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() {
  runApp(MaterialApp(
    home: ClippersEx(),
  ));
}

class ClippersEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clippers"),
      ),
      body: ListView(
        children: [
          ClipRect(
            child: Align(
                widthFactor: .4,
                heightFactor: .6,
                child: Image.asset("assets/images/pic5.jpg")),
                      ),

          ClipRRect(
            borderRadius: BorderRadius.circular(50),
          child: Image.asset("assets/images/pic4.jpg")),

          ClipOval(
    child: Image.asset("assets/images/pic10.jpg")
          ),
          ClipPath(
            clipper: TriangleClipper(),
              child: Image.asset("assets/images/pic8.jpg")

          ),
          ClipPath(
            clipper: MultiplePointedEdgeClipper(),
            child: Container(
              color: Colors.red,
              height: 300,
            ),
          )
        ],
      ),
    );
  }
}
