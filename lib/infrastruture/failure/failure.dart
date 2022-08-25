import 'package:multiple_user_bloc/domain/models/base-response/base_response.dart';
import 'package:http/http.dart' as http;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure implements Exception {
  const factory Failure.value(
    String? message,
  ) = Value;

  const factory Failure.connection() = Connection;

  const factory Failure.serverError({
    int? code,
    String? message,
    BaseResponse? response,
  }) = ServerError;

  const factory Failure.localError({
    String? message,
  }) = LocalError;

  const factory Failure.unexpected(
    String? message,
  ) = Unexpected;
}
