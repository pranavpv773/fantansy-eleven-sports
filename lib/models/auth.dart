import 'dart:convert';
// import 'package:fantasy_gaming/generated/json/base/json_field.dart';
// import 'package:fantasy_gaming/models/auth_entity.g.dart';
import 'package:json_annotation/json_annotation.dart';
part 'auth.g.dart';

@JsonSerializable()
class Auth {
  String? message;
  List<AuthData>? data;
  bool? error;

  Auth();

  factory Auth.fromJson(Map<String, dynamic> json) => _$AuthFromJson(json);

  Map<String, dynamic> toJson() => _$AuthToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AuthData {
  String? email;
  @JsonKey(name: "device_type")
  dynamic deviceType;
  @JsonKey(name: "device_token")
  String? deviceToken;
  @JsonKey(name: "login_type")
  dynamic loginType;
  String? name;
  String? profile;
  @JsonKey(name: "user_name")
  String? userName;
  @JsonKey(name: "mobile_number")
  String? mobileNumber;
  @JsonKey(name: "social_id")
  String? socialId;
  @JsonKey(name: "api_token")
  String? apiToken;

  AuthData();

  factory AuthData.fromJson(Map<String, dynamic> json) =>
      _$AuthDataFromJson(json);

  Map<String, dynamic> toJson() => _$AuthDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
