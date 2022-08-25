// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'failure_response.g.dart';

class FailureResponseFields {
  static const errorList = 'errorList';

  static const param = 'param';
  static const msg = 'msg';
}

@JsonSerializable()
class FailureResponse extends Equatable {
  FailureResponse({
    this.param,
    this.msg,
  });

  @JsonKey(name: FailureResponseFields.param)
  final String? param;

  @JsonKey(name: FailureResponseFields.msg)
  final String? msg;

  factory FailureResponse.fromJson(Map<String, dynamic> json) =>
      _$FailureResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FailureResponseToJson(this);

  @override
  List<Object?> get props => [param, msg];

  FailureResponse copyWith({
    String? param,
    String? msg,
  }) {
    return FailureResponse(
      param: param ?? this.param,
      msg: msg ?? this.msg,
    );
  }

  @override
  bool get stringify => true;
}
