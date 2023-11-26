import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridview4(),));
}
class Gridview4 extends StatelessWidget {

  var icons=[Icons.ice_skating,
    Icons.access_alarm,
    Icons.account_box,
    Icons.ice_skating,
    Icons.ice_skating,
    Icons.ice_skating,
    Icons.ice_skating,
    Icons.ice_skating,
    Icons.ice_skating,
    Icons.ice_skating,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      GridView.extent(maxCrossAxisExtent: 120,
         children: List.generate(10, (index) => Column(
            children: [
              Expanded(child: Image.asset("assets/images/pic1.jpg",fit: BoxFit.fill,)),
              Expanded(child: Icon(icons[index]))
            ],
          ))),
    );
  }
}
