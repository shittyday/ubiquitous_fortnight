// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthRequest _$$_AuthRequestFromJson(Map<String, dynamic> json) =>
    _$_AuthRequest(
      clientId: json['client_id'] as String,
      redirectUri: json['redirect_uri'] as String,
      display: $enumDecodeNullable(_$DisplayEnumMap, json['display']) ??
          Display.mobile,
      scope: json['scope'] as String? ?? '0',
      responseType: json['response_type'] as String? ?? 'token',
      state: json['state'] as String,
      revoke: json['revoke'] as String? ?? '1',
    );

Map<String, dynamic> _$$_AuthRequestToJson(_$_AuthRequest instance) =>
    <String, dynamic>{
      'client_id': instance.clientId,
      'redirect_uri': instance.redirectUri,
      'display': _$DisplayEnumMap[instance.display]!,
      'scope': instance.scope,
      'response_type': instance.responseType,
      'state': instance.state,
      'revoke': instance.revoke,
    };

const _$DisplayEnumMap = {
  Display.page: 'page',
  Display.popup: 'popup',
  Display.mobile: 'mobile',
};
