// To parse this JSON data, do
//
//     final profile = profileFromJson(jsonString);

import 'dart:convert';

Profile profileFromJson(String str) => Profile.fromJson(json.decode(str));

String profileToJson(Profile data) => json.encode(data.toJson());

class Profile {
  Profile({
    required this.status,
    required this.user,
    required this.posts,
  });

  bool status;
  User user;
  List<dynamic> posts;

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        status: json["status"],
        user: User.fromJson(json["user"]),
        posts: List<dynamic>.from(json["posts"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "user": user.toJson(),
        "posts": List<dynamic>.from(posts.map((x) => x)),
      };
}

class User {
  User({
    required this.id,
    required this.name,
    required this.email,
    required this.mobile,
    this.pincode,
    this.fcmToken,
    this.profileImage,
    required this.createdAt,
    required this.updatedAt,
    required this.plantedTree,
  });

  int id;
  String name;
  String email;
  String mobile;
  dynamic pincode;
  dynamic fcmToken;
  dynamic profileImage;
  DateTime createdAt;
  DateTime updatedAt;
  int plantedTree;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        mobile: json["mobile"],
        pincode: json["pincode"],
        fcmToken: json["fcm_token"],
        profileImage: json["profile_image"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        plantedTree: json["planted_tree"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "mobile": mobile,
        "pincode": pincode,
        "fcm_token": fcmToken,
        "profile_image": profileImage,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "planted_tree": plantedTree,
      };
}
