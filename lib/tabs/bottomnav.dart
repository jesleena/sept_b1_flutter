import 'package:flutter/material.dart';
import 'package:sept1_batch/gridview/gridview1.dart';
import 'package:sept1_batch/gridview/gridview2.dart';
import 'package:sept1_batch/gridview/gridview4.dart';

void main() {
  runApp(MaterialApp(
    home: BottomNav(),
  ));
}

class BottomNav extends StatefulWidget {
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int index = 0;
  var screens = [Gridview1(),
    Gridview2(),Gridview4()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: BottomNavigationBar(
        onTap: (tapindex) {
          setState(() {
            index = tapindex;
          });
        },
        type: BottomNavigationBarType.shifting,
       // backgroundColor: Colors.green,
        currentIndex: index,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(backgroundColor:Colors.cyan,icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(backgroundColor:Colors.red,icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(backgroundColor:Colors.orange,icon: Icon(Icons.person), label: "profile"),
        ],
      ),
      body: screens[index],
    );
  }
}
