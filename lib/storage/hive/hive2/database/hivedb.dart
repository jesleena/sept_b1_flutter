

import 'package:hive/hive.dart';

import '../model/user_model.dart';

class HiveDb{
  //singleton class

  HiveDb._internal(); //private named constructor
static HiveDb instance=HiveDb._internal(); //single instance creation

 //factory constructor to access instance
  factory HiveDb(){
   return instance;
 }

  Future<List<User>>getUser() async{
    final db=await Hive.openBox<User>('userData');
    return db.values.toList();
  }

 Future<void> addUser(User newUser) async{
   final db=await Hive.openBox<User>('userData');
   db.put(newUser.id, newUser);
 }
}