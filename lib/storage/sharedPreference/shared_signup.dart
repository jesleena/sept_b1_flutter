import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home.dart';

class SharedSignup extends StatefulWidget {
  @override
  State<SharedSignup> createState() => _SharedSignupState();
}

class _SharedSignupState extends State<SharedSignup> {
  final name_ctrl = TextEditingController();
  final uname_ctrl = TextEditingController();
  final pwd_ctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SignUp"),
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: name_ctrl,
              decoration: InputDecoration(
                  hintText: "name", border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: uname_ctrl,
              decoration: InputDecoration(
                  hintText: "username", border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: pwd_ctrl,
              decoration: InputDecoration(
                  hintText: "password", border: OutlineInputBorder()),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                storedata();
              },
              child: Text("Signup")),

        ])));
  }

  void storedata() async {
    final SharedPreferences preferences =
        await SharedPreferences.getInstance()!;
    String name = name_ctrl.text;
    String username = uname_ctrl.text;
    String password = pwd_ctrl.text;
    if (username != "" && password != "") {
      preferences.setString("name", name);
      preferences.setString("uname", username);
      preferences.setString("password", password);
      preferences.setBool("loggedin", true);
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Home()));
    }
  }
}
