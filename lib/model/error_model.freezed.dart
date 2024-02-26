// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ErrorModel _$ErrorModelFromJson(Map<String, dynamic> json) {
  return _ErrorModel.fromJson(json);
}

/// @nodoc
mixin _$ErrorModel {
  @JsonKey(name: "handler_code")
  dynamic get handlerCode => throw _privateConstructorUsedError;
  @JsonKey(name: "status_code")
  dynamic get statusCode => throw _privateConstructorUsedError;
  @JsonKey(name: "status_message")
  dynamic get statusMessage => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  dynamic get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  dynamic get message => throw _privateConstructorUsedError;
  @JsonKey(name: "line")
  dynamic get line => throw _privateConstructorUsedError;
  @JsonKey(name: "file")
  dynamic get file => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorModelCopyWith<ErrorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorModelCopyWith<$Res> {
  factory $ErrorModelCopyWith(
          ErrorModel value, $Res Function(ErrorModel) then) =
      _$ErrorModelCopyWithImpl<$Res, ErrorModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "handler_code") dynamic handlerCode,
      @JsonKey(name: "status_code") dynamic statusCode,
      @JsonKey(name: "status_message") dynamic statusMessage,
      @JsonKey(name: "status") dynamic status,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "line") dynamic line,
      @JsonKey(name: "file") dynamic file});
}

/// @nodoc
class _$ErrorModelCopyWithImpl<$Res, $Val extends ErrorModel>
    implements $ErrorModelCopyWith<$Res> {
  _$ErrorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? handlerCode = freezed,
    Object? statusCode = freezed,
    Object? statusMessage = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? line = freezed,
    Object? file = freezed,
  }) {
    return _then(_value.copyWith(
      handlerCode: freezed == handlerCode
          ? _value.handlerCode
          : handlerCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusMessage: freezed == statusMessage
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
      line: freezed == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as dynamic,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorModelImplCopyWith<$Res>
    implements $ErrorModelCopyWith<$Res> {
  factory _$$ErrorModelImplCopyWith(
          _$ErrorModelImpl value, $Res Function(_$ErrorModelImpl) then) =
      __$$ErrorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "handler_code") dynamic handlerCode,
      @JsonKey(name: "status_code") dynamic statusCode,
      @JsonKey(name: "status_message") dynamic statusMessage,
      @JsonKey(name: "status") dynamic status,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "line") dynamic line,
      @JsonKey(name: "file") dynamic file});
}

/// @nodoc
class __$$ErrorModelImplCopyWithImpl<$Res>
    extends _$ErrorModelCopyWithImpl<$Res, _$ErrorModelImpl>
    implements _$$ErrorModelImplCopyWith<$Res> {
  __$$ErrorModelImplCopyWithImpl(
      _$ErrorModelImpl _value, $Res Function(_$ErrorModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? handlerCode = freezed,
    Object? statusCode = freezed,
    Object? statusMessage = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? line = freezed,
    Object? file = freezed,
  }) {
    return _then(_$ErrorModelImpl(
      handlerCode: freezed == handlerCode
          ? _value.handlerCode
          : handlerCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusMessage: freezed == statusMessage
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
      line: freezed == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as dynamic,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorModelImpl implements _ErrorModel {
  _$ErrorModelImpl(
      {@JsonKey(name: "handler_code") this.handlerCode = null,
      @JsonKey(name: "status_code") this.statusCode = null,
      @JsonKey(name: "status_message") this.statusMessage = null,
      @JsonKey(name: "status") this.status = null,
      @JsonKey(name: "message") this.message = null,
      @JsonKey(name: "line") this.line = null,
      @JsonKey(name: "file") this.file = null});

  factory _$ErrorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorModelImplFromJson(json);

  @override
  @JsonKey(name: "handler_code")
  final dynamic handlerCode;
  @override
  @JsonKey(name: "status_code")
  final dynamic statusCode;
  @override
  @JsonKey(name: "status_message")
  final dynamic statusMessage;
  @override
  @JsonKey(name: "status")
  final dynamic status;
  @override
  @JsonKey(name: "message")
  final dynamic message;
  @override
  @JsonKey(name: "line")
  final dynamic line;
  @override
  @JsonKey(name: "file")
  final dynamic file;

  @override
  String toString() {
    return 'ErrorModel(handlerCode: $handlerCode, statusCode: $statusCode, statusMessage: $statusMessage, status: $status, message: $message, line: $line, file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorModelImpl &&
            const DeepCollectionEquality()
                .equals(other.handlerCode, handlerCode) &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode) &&
            const DeepCollectionEquality()
                .equals(other.statusMessage, statusMessage) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.line, line) &&
            const DeepCollectionEquality().equals(other.file, file));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(handlerCode),
      const DeepCollectionEquality().hash(statusCode),
      const DeepCollectionEquality().hash(statusMessage),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(line),
      const DeepCollectionEquality().hash(file));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorModelImplCopyWith<_$ErrorModelImpl> get copyWith =>
      __$$ErrorModelImplCopyWithImpl<_$ErrorModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorModelImplToJson(
      this,
    );
  }
}

abstract class _ErrorModel implements ErrorModel {
  factory _ErrorModel(
      {@JsonKey(name: "handler_code") final dynamic handlerCode,
      @JsonKey(name: "status_code") final dynamic statusCode,
      @JsonKey(name: "status_message") final dynamic statusMessage,
      @JsonKey(name: "status") final dynamic status,
      @JsonKey(name: "message") final dynamic message,
      @JsonKey(name: "line") final dynamic line,
      @JsonKey(name: "file") final dynamic file}) = _$ErrorModelImpl;

  factory _ErrorModel.fromJson(Map<String, dynamic> json) =
      _$ErrorModelImpl.fromJson;

  @override
  @JsonKey(name: "handler_code")
  dynamic get handlerCode;
  @override
  @JsonKey(name: "status_code")
  dynamic get statusCode;
  @override
  @JsonKey(name: "status_message")
  dynamic get statusMessage;
  @override
  @JsonKey(name: "status")
  dynamic get status;
  @override
  @JsonKey(name: "message")
  dynamic get message;
  @override
  @JsonKey(name: "line")
  dynamic get line;
  @override
  @JsonKey(name: "file")
  dynamic get file;
  @override
  @JsonKey(ignore: true)
  _$$ErrorModelImplCopyWith<_$ErrorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
