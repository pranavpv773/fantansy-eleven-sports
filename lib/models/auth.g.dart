// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Auth _$AuthFromJson(Map<String, dynamic> json) => Auth()
  ..message = json['message'] as String?
  ..data = (json['data'] as List<dynamic>?)
      ?.map((e) => AuthData.fromJson(e as Map<String, dynamic>))
      .toList()
  ..error = json['error'] as bool?;

Map<String, dynamic> _$AuthToJson(Auth instance) => <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };

AuthData _$AuthDataFromJson(Map<String, dynamic> json) => AuthData()
  ..email = json['email'] as String?
  ..deviceType = json['device_type']
  ..deviceToken = json['device_token'] as String?
  ..loginType = json['login_type']
  ..name = json['name'] as String?
  ..profile = json['profile'] as String?
  ..userName = json['user_name'] as String?
  ..mobileNumber = json['mobile_number'] as String?
  ..socialId = json['social_id'] as String?
  ..apiToken = json['api_token'] as String?;

Map<String, dynamic> _$AuthDataToJson(AuthData instance) => <String, dynamic>{
      'email': instance.email,
      'device_type': instance.deviceType,
      'device_token': instance.deviceToken,
      'login_type': instance.loginType,
      'name': instance.name,
      'profile': instance.profile,
      'user_name': instance.userName,
      'mobile_number': instance.mobileNumber,
      'social_id': instance.socialId,
      'api_token': instance.apiToken,
    };
