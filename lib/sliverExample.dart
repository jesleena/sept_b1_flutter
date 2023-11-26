import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:SliverExample()));
}
class SliverExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            elevation: 5,
            title: Text("Sliverss.."),
            bottom: AppBar(
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "search", prefixIcon: Icon(Icons.search)),
                ),
              ),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(List.generate(30, (index)=>ListTile(
            leading: Text("hello user$index"),
            trailing: Icon(Icons.person),
          ) )))
        ],
      ),
    );
  }
}
