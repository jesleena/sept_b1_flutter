import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:DrawerEx()));
}
class DrawerEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Drawer"),
      ),
      drawer: Drawer(
          backgroundColor: Colors.cyanAccent,
          child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration:BoxDecoration(color: Colors.red) ,
            currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/images/pic4.jpg"),),
              otherAccountsPictures: [ CircleAvatar(backgroundImage: AssetImage("assets/images/pic2.jpg"),),
                CircleAvatar(backgroundImage: AssetImage("assets/images/pic3.jpg"),),],
              accountName: Text("Luminar"),
              accountEmail: Text("luminar@gmail.com")),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
          ),

        ],
      )),
    );
  }
}
