// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseModelImpl _$$LoginResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginResponseModelImpl(
      success: json['success'] as bool? ?? true,
      dataLoginUser: json['data'] == null
          ? null
          : DataLoginUser.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginResponseModelImplToJson(
        _$LoginResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.dataLoginUser,
    };

_$DataLoginUserImpl _$$DataLoginUserImplFromJson(Map<String, dynamic> json) =>
    _$DataLoginUserImpl(
      token: json['token'] as String? ?? "",
    );

Map<String, dynamic> _$$DataLoginUserImplToJson(_$DataLoginUserImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
    };
