import 'package:flutter/material.dart';
import 'mywidget.dart';
import 'gridview2.dart';

void main() {
  runApp(MaterialApp(
    home: Gridview5(),
  ));
}

class Gridview5 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.custom(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            childrenDelegate: SliverChildBuilderDelegate(
                childCount: 20,
                (context, index) => MyWidget(
                      label: Text("hello"),
                      onpressed: () {Navigator.push(
                          context, MaterialPageRoute(builder: (context) =>(Gridview2())));

                      },
                      bgcolor: Colors.black,
                      image: Image(image: AssetImage("assets/images/pic2.jpg")),
                    )
                // GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
                //     childrenDelegate: SliverChildListDelegate(List.generate(20, (index) => Card(
                //       child: Text("hello"),
                )));
  }
}
