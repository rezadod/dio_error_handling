import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';

@freezed
class LoginResponseModel with _$LoginResponseModel {
  factory LoginResponseModel({
    @Default(true) bool success,
    @JsonKey(name: 'data') DataLoginUser? dataLoginUser,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}

@freezed
class DataLoginUser with _$DataLoginUser {
  factory DataLoginUser({
    @Default("") @JsonKey(name: 'token') String token,
  }) = _DataLoginUser;

  factory DataLoginUser.fromJson(Map<String, dynamic> json) =>
      _$DataLoginUserFromJson(json);
}
