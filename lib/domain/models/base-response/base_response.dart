// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:multiple_user_bloc/domain/models/failure-response/failure_response.dart';

part 'base_response.g.dart';

class BaseResponseFields {
  static const success = 'success';
  static const displayMessage = 'displayMessage';
  static const errorType = 'err_type';
  static const message = 'message';
  static const description = 'description';
  static const errorObj = 'errorObj';
  static const resultObj = 'resultObj';
}

@JsonSerializable()
class BaseResponse extends Equatable {
  BaseResponse({
    this.success,
    this.displayMessage,
    this.errType,
    this.message,
    this.description,
    this.errorObj,
    this.resultObj,
  });

  @JsonKey(name: BaseResponseFields.success)
  final bool? success;

  @JsonKey(name: BaseResponseFields.displayMessage)
  final String? displayMessage;

  @JsonKey(name: BaseResponseFields.errorType)
  final String? errType;

  @JsonKey(name: BaseResponseFields.message)
  final String? message;

  @JsonKey(name: BaseResponseFields.description)
  final String? description;

  @JsonKey(name: BaseResponseFields.errorObj)
  final ErrorListObject? errorObj;

  @JsonKey(name: BaseResponseFields.resultObj)
  final dynamic resultObj;

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);

  @override
  List<Object?> get props {
    return [
      success,
      displayMessage,
      errType,
      message,
      description,
      errorObj,
    ];
  }

  BaseResponse copyWith({
    bool? success,
    String? displayMessage,
    String? errType,
    String? message,
    String? description,
    ErrorListObject? errorObj,
    dynamic resultObj,
  }) {
    return BaseResponse(
      success: success ?? this.success,
      displayMessage: displayMessage ?? this.displayMessage,
      errType: errType ?? this.errType,
      message: message ?? this.message,
      description: description ?? this.description,
      errorObj: errorObj ?? this.errorObj,
      resultObj: resultObj ?? this.resultObj,
    );
  }

  @override
  bool get stringify => true;
}

@JsonSerializable()
class ErrorListObject {
  ErrorListObject({
    this.errorList,
  });

  @JsonKey(name: 'errorList')
  final List<FailureResponse>? errorList;

  factory ErrorListObject.fromJson(Map<String, dynamic> json) =>
      _$ErrorListObjectFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorListObjectToJson(this);

  @override
  String toString() => 'ErrorListObject(errorList: $errorList)';
}
