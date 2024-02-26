// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) {
  return _LoginResponseModel.fromJson(json);
}

/// @nodoc
mixin _$LoginResponseModel {
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  DataLoginUser? get dataLoginUser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseModelCopyWith<LoginResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseModelCopyWith<$Res> {
  factory $LoginResponseModelCopyWith(
          LoginResponseModel value, $Res Function(LoginResponseModel) then) =
      _$LoginResponseModelCopyWithImpl<$Res, LoginResponseModel>;
  @useResult
  $Res call(
      {bool success, @JsonKey(name: 'data') DataLoginUser? dataLoginUser});

  $DataLoginUserCopyWith<$Res>? get dataLoginUser;
}

/// @nodoc
class _$LoginResponseModelCopyWithImpl<$Res, $Val extends LoginResponseModel>
    implements $LoginResponseModelCopyWith<$Res> {
  _$LoginResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? dataLoginUser = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      dataLoginUser: freezed == dataLoginUser
          ? _value.dataLoginUser
          : dataLoginUser // ignore: cast_nullable_to_non_nullable
              as DataLoginUser?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataLoginUserCopyWith<$Res>? get dataLoginUser {
    if (_value.dataLoginUser == null) {
      return null;
    }

    return $DataLoginUserCopyWith<$Res>(_value.dataLoginUser!, (value) {
      return _then(_value.copyWith(dataLoginUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginResponseModelImplCopyWith<$Res>
    implements $LoginResponseModelCopyWith<$Res> {
  factory _$$LoginResponseModelImplCopyWith(_$LoginResponseModelImpl value,
          $Res Function(_$LoginResponseModelImpl) then) =
      __$$LoginResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool success, @JsonKey(name: 'data') DataLoginUser? dataLoginUser});

  @override
  $DataLoginUserCopyWith<$Res>? get dataLoginUser;
}

/// @nodoc
class __$$LoginResponseModelImplCopyWithImpl<$Res>
    extends _$LoginResponseModelCopyWithImpl<$Res, _$LoginResponseModelImpl>
    implements _$$LoginResponseModelImplCopyWith<$Res> {
  __$$LoginResponseModelImplCopyWithImpl(_$LoginResponseModelImpl _value,
      $Res Function(_$LoginResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? dataLoginUser = freezed,
  }) {
    return _then(_$LoginResponseModelImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      dataLoginUser: freezed == dataLoginUser
          ? _value.dataLoginUser
          : dataLoginUser // ignore: cast_nullable_to_non_nullable
              as DataLoginUser?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResponseModelImpl implements _LoginResponseModel {
  _$LoginResponseModelImpl(
      {this.success = true, @JsonKey(name: 'data') this.dataLoginUser});

  factory _$LoginResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResponseModelImplFromJson(json);

  @override
  @JsonKey()
  final bool success;
  @override
  @JsonKey(name: 'data')
  final DataLoginUser? dataLoginUser;

  @override
  String toString() {
    return 'LoginResponseModel(success: $success, dataLoginUser: $dataLoginUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResponseModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.dataLoginUser, dataLoginUser) ||
                other.dataLoginUser == dataLoginUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, dataLoginUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResponseModelImplCopyWith<_$LoginResponseModelImpl> get copyWith =>
      __$$LoginResponseModelImplCopyWithImpl<_$LoginResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResponseModelImplToJson(
      this,
    );
  }
}

abstract class _LoginResponseModel implements LoginResponseModel {
  factory _LoginResponseModel(
          {final bool success,
          @JsonKey(name: 'data') final DataLoginUser? dataLoginUser}) =
      _$LoginResponseModelImpl;

  factory _LoginResponseModel.fromJson(Map<String, dynamic> json) =
      _$LoginResponseModelImpl.fromJson;

  @override
  bool get success;
  @override
  @JsonKey(name: 'data')
  DataLoginUser? get dataLoginUser;
  @override
  @JsonKey(ignore: true)
  _$$LoginResponseModelImplCopyWith<_$LoginResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataLoginUser _$DataLoginUserFromJson(Map<String, dynamic> json) {
  return _DataLoginUser.fromJson(json);
}

/// @nodoc
mixin _$DataLoginUser {
  @JsonKey(name: 'token')
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataLoginUserCopyWith<DataLoginUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataLoginUserCopyWith<$Res> {
  factory $DataLoginUserCopyWith(
          DataLoginUser value, $Res Function(DataLoginUser) then) =
      _$DataLoginUserCopyWithImpl<$Res, DataLoginUser>;
  @useResult
  $Res call({@JsonKey(name: 'token') String token});
}

/// @nodoc
class _$DataLoginUserCopyWithImpl<$Res, $Val extends DataLoginUser>
    implements $DataLoginUserCopyWith<$Res> {
  _$DataLoginUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataLoginUserImplCopyWith<$Res>
    implements $DataLoginUserCopyWith<$Res> {
  factory _$$DataLoginUserImplCopyWith(
          _$DataLoginUserImpl value, $Res Function(_$DataLoginUserImpl) then) =
      __$$DataLoginUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'token') String token});
}

/// @nodoc
class __$$DataLoginUserImplCopyWithImpl<$Res>
    extends _$DataLoginUserCopyWithImpl<$Res, _$DataLoginUserImpl>
    implements _$$DataLoginUserImplCopyWith<$Res> {
  __$$DataLoginUserImplCopyWithImpl(
      _$DataLoginUserImpl _value, $Res Function(_$DataLoginUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$DataLoginUserImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataLoginUserImpl implements _DataLoginUser {
  _$DataLoginUserImpl({@JsonKey(name: 'token') this.token = ""});

  factory _$DataLoginUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataLoginUserImplFromJson(json);

  @override
  @JsonKey(name: 'token')
  final String token;

  @override
  String toString() {
    return 'DataLoginUser(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataLoginUserImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataLoginUserImplCopyWith<_$DataLoginUserImpl> get copyWith =>
      __$$DataLoginUserImplCopyWithImpl<_$DataLoginUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataLoginUserImplToJson(
      this,
    );
  }
}

abstract class _DataLoginUser implements DataLoginUser {
  factory _DataLoginUser({@JsonKey(name: 'token') final String token}) =
      _$DataLoginUserImpl;

  factory _DataLoginUser.fromJson(Map<String, dynamic> json) =
      _$DataLoginUserImpl.fromJson;

  @override
  @JsonKey(name: 'token')
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$DataLoginUserImplCopyWith<_$DataLoginUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
