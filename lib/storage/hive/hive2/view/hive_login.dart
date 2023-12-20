import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:sept1_batch/storage/hive/hive2/model/user_model.dart';
import 'package:sept1_batch/storage/hive/hive2/view/hive_home.dart';
import '../database/hivedb.dart';
import 'hive_reg.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dbDir = await path_provider.getApplicationDocumentsDirectory();
  await Hive.initFlutter(dbDir.path); // init hive
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox<User>('userData');
  runApp(GetMaterialApp(
    home: HiveLogin(),
  ));
}

class HiveLogin extends StatelessWidget {
  final emil_ctrl = TextEditingController();
  final pwd_ctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: emil_ctrl,
              decoration: InputDecoration(hintText: "email"),
            ),
            TextField(
              controller: pwd_ctrl,
              decoration: InputDecoration(hintText: "password"),
            ),
            ElevatedButton(
                onPressed: () async {
                  final regUserList = await HiveDb.instance.getUser();
                  validate_login(regUserList);
                },
                child: Text("login")),
            TextButton(
                onPressed: () {
                  Get.to(Hive_reg());
                },
                child: Text("Didn't have an account,Register here.."))
          ],
        ),
      ),
    );
  }

  Future<void> validate_login(List<User> regUserList) async {
    final eemail = emil_ctrl.text.trim();
    final epwd = pwd_ctrl.text.trim();
    bool userFound = false;
    if (eemail != '' && epwd != '') {
      await Future.forEach(regUserList, (user) {
        //to check email already existing
        if (user.email == eemail && user.password == epwd) {
          userFound = true;
        }
        else {
          userFound = false;
        }
      });

      if (userFound == true) {
        Get.snackbar("Success", "Login success", colorText: Colors.green);
        Get.to(HiveHome());
      }
      else {
        Get.snackbar("Error", "No user found", colorText: Colors.red,);
      }
    }
    else {
      Get.snackbar("Error", "Fields must not be empty", colorText: Colors.red);
    }
  }
}
