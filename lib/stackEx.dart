import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: StackEx(),
  ));
}

class StackEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1531265726475-52ad60219627?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzR8fGJhY2tncm91bmQlMjBkZXNpZ258ZW58MHx8MHx8fDA%3D"),
                      fit: BoxFit.fill)),
            ),
            Positioned(
              left: 50,
              top: 50,
              child: Text("Name", style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
            ),
            Positioned(
              left:300,
              top: 350,
              child: Text("place",style: TextStyle(fontSize: 25,color: Colors.white),)
            )
          ],
        ),
      ),
    );
  }
}
