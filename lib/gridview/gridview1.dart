import 'package:flutter/material.dart';
import 'gridview2.dart';
import 'package:sept1_batch/gridview/mywidget.dart';

void main() {
  runApp(MaterialApp(
    home: Gridview1(),
  ));
}

class Gridview1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          // GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          // crossAxisCount: 4,),
          //   children: List.generate(20, (index) => Card(
          //     child: Image.asset("assets/pic1.jpg"),
          //   )),
          // ),

          GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100,
            mainAxisExtent: 120,
            mainAxisSpacing: 40,
            crossAxisSpacing: 10),
        children: List.generate(
            20,
            (index) => MyWidget(
                  label: Text("hi"),
                  onpressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => (Gridview2())));
                  },
                  bgcolor: Colors.cyan,
                  image: Image.asset("assets/images/pic2.jpg"),
                )),
      ),
    );
  }
}
