import 'package:flutter/material.dart';
import 'package:sept1_batch/storage/sharedPreference/home.dart';
import 'package:sept1_batch/storage/sharedPreference/shared_signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
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
                  decoration: InputDecoration(hintText: "username",border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: pwd_ctrl,
                  decoration: InputDecoration(hintText: "password",border: OutlineInputBorder()),
                ),
              ),
              ElevatedButton(
                   onPressed: (){
                     validate_login();
                   },
                child: Text("Login")),
              TextButton(onPressed: (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => SharedSignup()));
              }, child:Text("signup"))
            ],
          ),
        ));
  }
  void validate_login() async{
    final SharedPreferences preferences =await SharedPreferences.getInstance()!;
    String username=uname_ctrl.text;
    String password=pwd_ctrl.text;
    String? uname=preferences.getString("uname");
    String? paswd=preferences.getString("password");
    if(username==uname && password==paswd){
      preferences.setBool("loggedin", true);
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Home()));
    }
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