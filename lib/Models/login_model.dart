// To parse this JSON data, do
//
//     final loginModel = loginModelFromMap(jsonString);

import 'dart:convert';

LoginModel loginModelFromMap(String str) => LoginModel.fromMap(json.decode(str));

String loginModelToMap(LoginModel data) => json.encode(data.toMap());

class LoginModel {
    LoginModel({
        this.id,
        this.username,
        this.fullName,
        this.key,
        this.adminPin,
    });

    final String id;
    final String username;
    final String fullName;
    final String key;
    final String adminPin;

    LoginModel copyWith({
        String id,
        String username,
        String fullName,
        String key,
        String adminPin,
    }) => 
        LoginModel(
            id: id ?? this.id,
            username: username ?? this.username,
            fullName: fullName ?? this.fullName,
            key: key ?? this.key,
            adminPin: adminPin ?? this.adminPin,
        );

    factory LoginModel.fromMap(Map<String, dynamic> json) => LoginModel(
        id: json["id"] == null ? null : json["id"],
        username: json["username"] == null ? null : json["username"],
        fullName: json["full_name"] == null ? null : json["full_name"],
        key: json["key"] == null ? null : json["key"],
        adminPin: json["admin_pin"] == null ? null : json["admin_pin"],
    );

    Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "username": username == null ? null : username,
        "full_name": fullName == null ? null : fullName,
        "key": key == null ? null : key,
        "admin_pin": adminPin == null ? null : adminPin,
    };
}
