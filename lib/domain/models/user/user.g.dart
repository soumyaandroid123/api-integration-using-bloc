// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      userInfo: json['userInfo'] == null
          ? const UserInfo()
          : UserInfo.fromJson(json['userInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'userInfo': instance.userInfo,
    };

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) => UserInfo(
      id: json['id'] as int? ?? 0,
      email: json['email'] as String? ?? "",
      firstName: json['first_name'] as String? ?? "",
      lastName: json['last_name'] as String? ?? "",
      avatar: json['avatar'] as String? ?? "",
    );

Map<String, dynamic> _$UserInfoToJson(UserInfo instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'avatar': instance.avatar,
    };
