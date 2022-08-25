// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import '../success-response/success_response.dart';

part 'user.g.dart';

class UserFields {
  static const userInfo = 'userInfo';
}

@JsonSerializable()
class User extends SuccessResponse {
  const User({
    this.userInfo = const UserInfo(),
  });

  @JsonKey(name: UserFields.userInfo)
  final UserInfo userInfo;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  User copyWith({
    UserInfo? userInfo,
  }) {
    return User(
      userInfo: userInfo ?? this.userInfo,
    );
  }
}

class UserInfoFields {
  static const id = "id";
  static const email = "email";
  static const firstName = "first_name";
  static const lastName = "last_name";
  static const avatar = "avatar";
}

@JsonSerializable()
class UserInfo extends SuccessResponse {
  const UserInfo({
    this.id = 0,
    this.email = "",
    this.firstName = "",
    this.lastName = "",
    this.avatar = "",
  });

  @JsonKey(name: UserInfoFields.id)
  final int id;

  @JsonKey(name: UserInfoFields.email)
  final String email;

  @JsonKey(name: UserInfoFields.firstName)
  final String firstName;

  @JsonKey(name: UserInfoFields.lastName)
  final String lastName;

  @JsonKey(name: UserInfoFields.avatar)
  final String avatar;

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);

  Map<String, dynamic> toJson() => _$UserInfoToJson(this);

  UserInfo copyWith({
    int? id,
    String? email,
    String? firstName,
    String? lastName,
    String? avatar,
  }) {
    return UserInfo(
      id: id ?? this.id,
      email: email ?? this.email,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      avatar: avatar ?? this.avatar,
    );
  }

  @override
  List<Object> get props {
    return [
      id,
      email,
      firstName,
      lastName,
      avatar,
    ];
  }
}
