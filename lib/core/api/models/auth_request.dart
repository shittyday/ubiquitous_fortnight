import 'package:freezed_annotation/freezed_annotation.dart';

import 'display.dart';

part 'auth_request.freezed.dart';
part 'auth_request.g.dart';

@freezed
class AuthRequest with _$AuthRequest {
  const AuthRequest._();

  // ignore: invalid_annotation_target
  @JsonSerializable(
    fieldRename: FieldRename.snake, // <---
  )
  const factory AuthRequest({
    required String clientId,
    required String redirectUri,
    @Default(Display.mobile) Display display,
    @Default('0') String scope,
    @Default('token') String responseType,
    required String state,
    @Default('1') String revoke,
  }) = _AuthRequest;

  factory AuthRequest.fromJson(Map<String, dynamic> json) =>
      _$AuthRequestFromJson(json);
}
