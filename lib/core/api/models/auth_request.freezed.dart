// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthRequest _$AuthRequestFromJson(Map<String, dynamic> json) {
  return _AuthRequest.fromJson(json);
}

/// @nodoc
mixin _$AuthRequest {
  String get clientId => throw _privateConstructorUsedError;
  String get redirectUri => throw _privateConstructorUsedError;
  Display get display => throw _privateConstructorUsedError;
  String get scope => throw _privateConstructorUsedError;
  String get responseType => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get revoke => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthRequestCopyWith<AuthRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthRequestCopyWith<$Res> {
  factory $AuthRequestCopyWith(
          AuthRequest value, $Res Function(AuthRequest) then) =
      _$AuthRequestCopyWithImpl<$Res, AuthRequest>;
  @useResult
  $Res call(
      {String clientId,
      String redirectUri,
      Display display,
      String scope,
      String responseType,
      String state,
      String revoke});
}

/// @nodoc
class _$AuthRequestCopyWithImpl<$Res, $Val extends AuthRequest>
    implements $AuthRequestCopyWith<$Res> {
  _$AuthRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
    Object? redirectUri = null,
    Object? display = null,
    Object? scope = null,
    Object? responseType = null,
    Object? state = null,
    Object? revoke = null,
  }) {
    return _then(_value.copyWith(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      redirectUri: null == redirectUri
          ? _value.redirectUri
          : redirectUri // ignore: cast_nullable_to_non_nullable
              as String,
      display: null == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as Display,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      responseType: null == responseType
          ? _value.responseType
          : responseType // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      revoke: null == revoke
          ? _value.revoke
          : revoke // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthRequestCopyWith<$Res>
    implements $AuthRequestCopyWith<$Res> {
  factory _$$_AuthRequestCopyWith(
          _$_AuthRequest value, $Res Function(_$_AuthRequest) then) =
      __$$_AuthRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String clientId,
      String redirectUri,
      Display display,
      String scope,
      String responseType,
      String state,
      String revoke});
}

/// @nodoc
class __$$_AuthRequestCopyWithImpl<$Res>
    extends _$AuthRequestCopyWithImpl<$Res, _$_AuthRequest>
    implements _$$_AuthRequestCopyWith<$Res> {
  __$$_AuthRequestCopyWithImpl(
      _$_AuthRequest _value, $Res Function(_$_AuthRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
    Object? redirectUri = null,
    Object? display = null,
    Object? scope = null,
    Object? responseType = null,
    Object? state = null,
    Object? revoke = null,
  }) {
    return _then(_$_AuthRequest(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      redirectUri: null == redirectUri
          ? _value.redirectUri
          : redirectUri // ignore: cast_nullable_to_non_nullable
              as String,
      display: null == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as Display,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      responseType: null == responseType
          ? _value.responseType
          : responseType // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      revoke: null == revoke
          ? _value.revoke
          : revoke // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_AuthRequest extends _AuthRequest {
  const _$_AuthRequest(
      {required this.clientId,
      required this.redirectUri,
      this.display = Display.mobile,
      this.scope = '0',
      this.responseType = 'token',
      required this.state,
      this.revoke = '1'})
      : super._();

  factory _$_AuthRequest.fromJson(Map<String, dynamic> json) =>
      _$$_AuthRequestFromJson(json);

  @override
  final String clientId;
  @override
  final String redirectUri;
  @override
  @JsonKey()
  final Display display;
  @override
  @JsonKey()
  final String scope;
  @override
  @JsonKey()
  final String responseType;
  @override
  final String state;
  @override
  @JsonKey()
  final String revoke;

  @override
  String toString() {
    return 'AuthRequest(clientId: $clientId, redirectUri: $redirectUri, display: $display, scope: $scope, responseType: $responseType, state: $state, revoke: $revoke)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthRequest &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.redirectUri, redirectUri) ||
                other.redirectUri == redirectUri) &&
            (identical(other.display, display) || other.display == display) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            (identical(other.responseType, responseType) ||
                other.responseType == responseType) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.revoke, revoke) || other.revoke == revoke));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, clientId, redirectUri, display,
      scope, responseType, state, revoke);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthRequestCopyWith<_$_AuthRequest> get copyWith =>
      __$$_AuthRequestCopyWithImpl<_$_AuthRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthRequestToJson(
      this,
    );
  }
}

abstract class _AuthRequest extends AuthRequest {
  const factory _AuthRequest(
      {required final String clientId,
      required final String redirectUri,
      final Display display,
      final String scope,
      final String responseType,
      required final String state,
      final String revoke}) = _$_AuthRequest;
  const _AuthRequest._() : super._();

  factory _AuthRequest.fromJson(Map<String, dynamic> json) =
      _$_AuthRequest.fromJson;

  @override
  String get clientId;
  @override
  String get redirectUri;
  @override
  Display get display;
  @override
  String get scope;
  @override
  String get responseType;
  @override
  String get state;
  @override
  String get revoke;
  @override
  @JsonKey(ignore: true)
  _$$_AuthRequestCopyWith<_$_AuthRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
