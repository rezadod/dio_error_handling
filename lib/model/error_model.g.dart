// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorModelImpl _$$ErrorModelImplFromJson(Map<String, dynamic> json) =>
    _$ErrorModelImpl(
      handlerCode: json['handler_code'] ?? null,
      statusCode: json['status_code'] ?? null,
      statusMessage: json['status_message'] ?? null,
      status: json['status'] ?? null,
      message: json['message'] ?? null,
      line: json['line'] ?? null,
      file: json['file'] ?? null,
    );

Map<String, dynamic> _$$ErrorModelImplToJson(_$ErrorModelImpl instance) =>
    <String, dynamic>{
      'handler_code': instance.handlerCode,
      'status_code': instance.statusCode,
      'status_message': instance.statusMessage,
      'status': instance.status,
      'message': instance.message,
      'line': instance.line,
      'file': instance.file,
    };
