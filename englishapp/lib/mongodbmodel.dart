import 'dart:convert';

import 'package:mongo_dart/mongo_dart.dart';

MongoDbModel mongoDbModelFromJson(String str) =>
    MongoDbModel.fromJson(json.decode(str));

String mongoDbModelToJson(MongoDbModel data) => json.encode(data.toJson());

class MongoDbModel {
  ObjectId id;
  String fullname;
  String email;
  String password;
  AtedAt createdAt;
  AtedAt updatedAt;
  int v;

  MongoDbModel({
    required this.id,
    required this.fullname,
    required this.email,
    required this.password,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory MongoDbModel.fromJson(Map<String, dynamic> json) => MongoDbModel(
        id: json["_id"],
        fullname: json["fullname"],
        email: json["email"],
        password: json["password"],
        createdAt: AtedAt.fromJson(json["createdAt"]),
        updatedAt: AtedAt.fromJson(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id.toJson(),
        "fullname": fullname,
        "email": email,
        "password": password,
        "createdAt": createdAt.toJson(),
        "updatedAt": updatedAt.toJson(),
        "__v": v,
      };
}

class AtedAt {
  DateTime date;

  AtedAt({
    required this.date,
  });

  factory AtedAt.fromJson(Map<String, dynamic> json) => AtedAt(
        date: DateTime.parse(json["\u0024date"]),
      );

  Map<String, dynamic> toJson() => {
        "\u0024date": date.toIso8601String(),
      };
}

class Id {
  String oid;

  Id({
    required this.oid,
  });

  factory Id.fromJson(Map<String, dynamic> json) => Id(
        oid: json["\u0024oid"],
      );

  Map<String, dynamic> toJson() => {
        "\u0024oid": oid,
      };
}
