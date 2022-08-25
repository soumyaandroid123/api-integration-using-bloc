import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../infrastruture/failure/failure.dart';

part 'status.freezed.dart';

@freezed
class Status with _$Status {
  const factory Status.initial() = _Initial;
  const factory Status.loading() = _Loading;
  const factory Status.empty() = _Empty;
  const factory Status.localSuccess() = _LocalSuccess;
  const factory Status.success() = _Success;
  const factory Status.failure([Failure? failure]) = _StatusFailure;
  const factory Status.refreshFailure([Failure? failure]) =
      _StatusRefreshFailure;
  const factory Status.paginationFailure([Failure? failure]) =
      _StatusPaginationFailure;
  const factory Status.actionInProgress() = _ActionInProgress;
  const factory Status.actionComplete() = _ActionComplete;
  const factory Status.actionIncomplete([Failure? failure]) = _ActionFailure;
}