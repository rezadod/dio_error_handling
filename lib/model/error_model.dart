import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_model.freezed.dart';
part 'error_model.g.dart';

@freezed
class ErrorModel with _$ErrorModel {
  factory ErrorModel({
    @Default(null) @JsonKey(name: "handler_code") dynamic handlerCode,
    @Default(null) @JsonKey(name: "status_code") dynamic statusCode,
    @Default(null) @JsonKey(name: "status_message") dynamic statusMessage,
    @Default(null) @JsonKey(name: "status") dynamic status,
    @Default(null) @JsonKey(name: "message") dynamic message,
    @Default(null) @JsonKey(name: "line") dynamic line,
    @Default(null) @JsonKey(name: "file") dynamic file,
  }) = _ErrorModel;

  factory ErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorModelFromJson(json);
}
