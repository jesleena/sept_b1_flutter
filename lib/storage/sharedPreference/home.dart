import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    getvalue();
    super.initState();
  }
  @override
  String? username;
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Hi $username....."),),
    );
  }

  void getvalue() async{
    final SharedPreferences preferences =await SharedPreferences.getInstance()!;
    setState(() {
      username=preferences.getString("uname")!;
    });

  }
}
