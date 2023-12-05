import 'package:flutter/material.dart';
import 'package:sept1_batch/storage/sharedPreference/shared_login.dart';
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
  String? name;
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Hi $name....."),
      actions: [
        IconButton(onPressed: ()async{
          final SharedPreferences preferences =await SharedPreferences.getInstance()!;
        preferences.setBool("loggedin", false);
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>SharedLogin()));
          }, icon: Icon(Icons.logout))
      ],),
    );
  }

  void getvalue() async{
    final SharedPreferences preferences =await SharedPreferences.getInstance()!;
    setState(() {
      name=preferences.getString("name")!;
    });

  }
}
