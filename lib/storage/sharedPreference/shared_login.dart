import 'package:flutter/material.dart';
import 'package:sept1_batch/storage/sharedPreference/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    home: SharedLogin(),
  ));
}

class SharedLogin extends StatefulWidget {

  @override
  State<SharedLogin> createState() => _SharedLoginState();
}

class _SharedLoginState extends State<SharedLogin> {
  final uname_ctrl = TextEditingController();
  final pwd_ctrl = TextEditingController();
  late bool loggedin;

  @override
  void initState() {
    user_already_loggedin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: uname_ctrl,
                  decoration: InputDecoration(hintText: "username"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: pwd_ctrl,
                  decoration: InputDecoration(hintText: "password"),
                ),
              ),
              ElevatedButton(
                  onPressed: () async {
                    final SharedPreferences preferences =
                    await SharedPreferences.getInstance()!;
                    String? username = uname_ctrl.text;
                    String? password = pwd_ctrl.text;
                    if (username != "" && password != "") {
                      preferences.setString("uname", username);
                      preferences.setBool("loggedin", true);
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Home()));
                    }
                  },
                  child: Text("Login"))
            ],
          ),
        ));
  }

  void user_already_loggedin() async {
    final SharedPreferences preferences =
    await SharedPreferences.getInstance()!;

    /// if first stmt is null execute 2nd statement
    loggedin = preferences.getBool("loggedin") ?? false;
    if (loggedin == true) {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Home()));
    }
  }
}