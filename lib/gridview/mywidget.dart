import 'dart:ui';

import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
final Color? bgcolor;
final Image? image;
final Widget? label;
VoidCallback? onpressed;
MyWidget({this.bgcolor, this.image,required this.label,required this.onpressed});

@override
Widget build(BuildContext context) {

return
  Card(
      color: bgcolor,
      child: Column(children: [
        Container(child: image,),

        ElevatedButton(onPressed: onpressed,
          child: label,)
      ],

      ));





  }}

