import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(home: Gridview2()));
}

class Gridview2 extends StatelessWidget {
  var pics = [
    "assets/images/pic1.jpg",
    "assets/images/pic2.jpg",
    "assets/images/pic3.jpg",
    "assets/images/pic4.jpg",
    "assets/images/pic5.jpg",
    "assets/images/pic6.jpg",
    "assets/images/pic7.jpg",
    "assets/images/pic8.jpg",
    "assets/images/pic9.jpg",
    "assets/images/pic10.jpg",
    "assets/images/pic11.jpg",
    "assets/images/pic12.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      // body: GridView.builder(itemCount: 10,
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      //     itemBuilder: (context,index)=> Container(
      //       color: Colors.black,
      //       child: Column(
      //         children: [
      //           Image.asset("assets/images/pic1.jpg"),
      //           Text("Nature",style:TextStyle(color: Colors.white),)
      //         ],
      //       ),
      //     ),)

      body: GridView.builder(
          itemCount: 12,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, mainAxisSpacing: 5, crossAxisSpacing: 5),
          itemBuilder: (context, index) => Column(
                children: [
                  Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        pics[index],
                      ),
                      fit: BoxFit.fill,
                    ),
                  ))),

                  // Expanded(
                  //child:

                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.message),
                    label: Text("Message"),
                    style:ButtonStyle( backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),)
                    //ElevatedButton.styleFrom(backgroundColor: Colors.pink[200]



                    ),

                  // Text(
                  //   "User${index + 1}",
                  //   style:
                  //       GoogleFonts.pacifico(fontSize: 30, color: Colors.red),
                  // ),
                  // ),
                ],
              )),
    );
  }
}
