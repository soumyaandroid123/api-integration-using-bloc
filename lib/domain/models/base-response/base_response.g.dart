// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) => BaseResponse(
      success: json['success'] as bool?,
      displayMessage: json['displayMessage'] as String?,
      errType: json['err_type'] as String?,
      message: json['message'] as String?,
      description: json['description'] as String?,
      errorObj: json['errorObj'] == null
          ? null
          : ErrorListObject.fromJson(json['errorObj'] as Map<String, dynamic>),
      resultObj: json['resultObj'],
    );

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'displayMessage': instance.displayMessage,
      'err_type': instance.errType,
      'message': instance.message,
      'description': instance.description,
      'errorObj': instance.errorObj,
      'resultObj': instance.resultObj,
    };

ErrorListObject _$ErrorListObjectFromJson(Map<String, dynamic> json) =>
    ErrorListObject(
      errorList: (json['errorList'] as List<dynamic>?)
          ?.map((e) => FailureResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ErrorListObjectToJson(ErrorListObject instance) =>
    <String, dynamic>{
      'errorList': instance.errorList,
    };
