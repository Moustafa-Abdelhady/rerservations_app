import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  String? message;
  @JsonKey(
      name:
          'data') // لو انا مسمتش نفس الاسم اللي جايلي من الريسبونس لازم اعرفه الاسم نفسه زي مانا عامل كدا
  UserData? userData;
  bool? status;
  int? code;

  LoginResponse({this.message, this.userData, this.code, this.status});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  String token;
  @JsonKey(
      name:
          'username') //لو انا مسمتش نفس الاسم اللي جايلي من الريسبونس لازم اعرفه الاسم نفسه زي مانا عامل كدا
  String userName;

  UserData({required this.token, required this.userName});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
