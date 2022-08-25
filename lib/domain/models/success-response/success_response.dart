import 'dart:developer';
import 'package:equatable/equatable.dart';
import '../user/user.dart';

class SuccessResponse extends Equatable {
  const SuccessResponse();

  factory SuccessResponse.fromJson(
      Map<String, dynamic> json, SuccessResponseType type) {
    try {
      switch (type) {
        case SuccessResponseType.user:
          return User.fromJson(json);
      }
    } catch (e) {
      log(e.toString());
      return SuccessResponse();
    }
  }

  @override
  List<Object?> get props => [];
}

enum SuccessResponseType { user }
