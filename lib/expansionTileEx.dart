import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ExpansionTileEx(),
  ));
}

class ExpansionTileEx extends StatelessWidget {
  var color1 = [Colors.red, Colors.green, Colors.blue];
  var color2 = [Colors.pink, Colors.purple, Colors.orange];
  var color3 = [Colors.yellow, Colors.brown, Colors.black];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expansion Tile"),
      ),
      body: ListView(
        children: [
          ExpansionTile(
            backgroundColor: Colors.red,

            title: Text("Tile1"),
            children: List.generate(
                3,
                (index) => ListTile(
                  leading: CircleAvatar(
                        backgroundColor: color1[index],
                      ),
                )),
          ),
          ExpansionTile(
            title: Text("Tile2"),
            children: List.generate(
                3,
                (index) => ListTile(
                  leading: CircleAvatar(
                        backgroundColor: color2[index],
                      ),
                )),
          ),
          ExpansionTile(
            title: Text("Tile3"),
            children: List.generate(
                3,
                (index) => ListTile(
                  leading: CircleAvatar(
                        backgroundColor: color3[index],
                      ),
                )),
          ),
        ],
      ),
    );
  }
}
