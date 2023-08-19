

/// first model create cheyanam
import 'package:hive/hive.dart';
part 'user_modell.g.dart'; /// model nte save cheytha name lib il

@HiveType(typeId: 0)
class User{
  @HiveField(0)
  final String email;
  @HiveField(1)
  final String password;
  @HiveField(2)
  String? id;
  @HiveField(3)
  String?name;

  User({required this.email,required this.password, this.name}){

  //id edukunathu datetime vevhu ane
    id =DateTime.now().microsecondsSinceEpoch.toString();
  }
}