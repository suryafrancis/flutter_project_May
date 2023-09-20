// To parse this JSON data, do
//
//     final productmodel = productmodelFromJson(jsonString);

import 'dart:convert';
class Productmodeldio {
  int? userId;
  int? id;
  String? title;
  String? body;

  Productmodeldio({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

   Productmodeldio.fromJson(Map<String, dynamic> json) {
    userId= json["userId"];
    id=json["id"];
    title=json["title"];
    body= json["body"];
  }
}
