import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:sept1_batch/gridview/gridview1.dart';
import 'package:sept1_batch/gridview/gridview2.dart';
import 'package:sept1_batch/list/list_listgenerate.dart';

void main(){
  runApp(MaterialApp(home: ConvexExample(),));
}
class ConvexExample extends StatefulWidget {
  const ConvexExample({Key? key}) : super(key: key);

  @override
  State<ConvexExample> createState() => _ConvexExampleState();
}

class _ConvexExampleState extends State<ConvexExample> {
  int index=0;
  var screens=[
    list1_generate(),
    Gridview1(),
    Gridview2()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Convex Appbar"),
      ),
      bottomNavigationBar: ConvexAppBar(
        onTap: (tapindex){
          setState(() {
            index=tapindex;
          });
        },

        items: [
        TabItem(icon: Icon(Icons.home)),
        TabItem(icon: Icon(Icons.person)),
        TabItem(icon: Icon(Icons.search)),
      ],

      ),
      body: screens[index],
    );
  }
}
