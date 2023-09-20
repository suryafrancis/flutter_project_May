import 'package:flutter_project_may/hivenextoption/model/user_modell.dart';
import 'package:hive/hive.dart';

class HiveDB{
  ///creation of singleton class
/// afctory class must have return value using instance
  
  HiveDB._internal(); // private named constructor
  /// single instance creation instance means class nte objct name
  static HiveDB instance= HiveDB._internal();
  
  factory HiveDB(){ /// classname .object that means hivedb.instance
   return instance; 
  }

 Future<List<User>> getuser()async {
    final db= await Hive.openBox<User>("UserData");
    return db.values.toList();
 }

 Future<void> adduser(User user) async{
    final db= await Hive.openBox<User>('UserData');
    db.put(user.id, user);
 }
}