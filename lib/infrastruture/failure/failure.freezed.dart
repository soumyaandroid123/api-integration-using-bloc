// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) value,
    required TResult Function() connection,
    required TResult Function(
            int? code, String? message, BaseResponse? response)
        serverError,
    required TResult Function(String? message) localError,
    required TResult Function(String? message) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? value,
    TResult Function()? connection,
    TResult Function(int? code, String? message, BaseResponse? response)?
        serverError,
    TResult Function(String? message)? localError,
    TResult Function(String? message)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? value,
    TResult Function()? connection,
    TResult Function(int? code, String? message, BaseResponse? response)?
        serverError,
    TResult Function(String? message)? localError,
    TResult Function(String? message)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Value value) value,
    required TResult Function(Connection value) connection,
    required TResult Function(ServerError value) serverError,
    required TResult Function(LocalError value) localError,
    required TResult Function(Unexpected value) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Value value)? value,
    TResult Function(Connection value)? connection,
    TResult Function(ServerError value)? serverError,
    TResult Function(LocalError value)? localError,
    TResult Function(Unexpected value)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Value value)? value,
    TResult Function(Connection value)? connection,
    TResult Function(ServerError value)? serverError,
    TResult Function(LocalError value)? localError,
    TResult Function(Unexpected value)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class _$$ValueCopyWith<$Res> {
  factory _$$ValueCopyWith(_$Value value, $Res Function(_$Value) then) =
      __$$ValueCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$$ValueCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$ValueCopyWith<$Res> {
  __$$ValueCopyWithImpl(_$Value _value, $Res Function(_$Value) _then)
      : super(_value, (v) => _then(v as _$Value));

  @override
  _$Value get _value => super._value as _$Value;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$Value(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$Value implements Value {
  const _$Value(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.value(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Value &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ValueCopyWith<_$Value> get copyWith =>
      __$$ValueCopyWithImpl<_$Value>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) value,
    required TResult Function() connection,
    required TResult Function(
            int? code, String? message, BaseResponse? response)
        serverError,
    required TResult Function(String? message) localError,
    required TResult Function(String? message) unexpected,
  }) {
    return value(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? value,
    TResult Function()? connection,
    TResult Function(int? code, String? message, BaseResponse? response)?
        serverError,
    TResult Function(String? message)? localError,
    TResult Function(String? message)? unexpected,
  }) {
    return value?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? value,
    TResult Function()? connection,
    TResult Function(int? code, String? message, BaseResponse? response)?
        serverError,
    TResult Function(String? message)? localError,
    TResult Function(String? message)? unexpected,
    required TResult orElse(),
  }) {
    if (value != null) {
      return value(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Value value) value,
    required TResult Function(Connection value) connection,
    required TResult Function(ServerError value) serverError,
    required TResult Function(LocalError value) localError,
    required TResult Function(Unexpected value) unexpected,
  }) {
    return value(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Value value)? value,
    TResult Function(Connection value)? connection,
    TResult Function(ServerError value)? serverError,
    TResult Function(LocalError value)? localError,
    TResult Function(Unexpected value)? unexpected,
  }) {
    return value?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Value value)? value,
    TResult Function(Connection value)? connection,
    TResult Function(ServerError value)? serverError,
    TResult Function(LocalError value)? localError,
    TResult Function(Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (value != null) {
      return value(this);
    }
    return orElse();
  }
}

abstract class Value implements Failure {
  const factory Value(final String? message) = _$Value;

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ValueCopyWith<_$Value> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectionCopyWith<$Res> {
  factory _$$ConnectionCopyWith(
          _$Connection value, $Res Function(_$Connection) then) =
      __$$ConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectionCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$ConnectionCopyWith<$Res> {
  __$$ConnectionCopyWithImpl(
      _$Connection _value, $Res Function(_$Connection) _then)
      : super(_value, (v) => _then(v as _$Connection));

  @override
  _$Connection get _value => super._value as _$Connection;
}

/// @nodoc

class _$Connection implements Connection {
  const _$Connection();

  @override
  String toString() {
    return 'Failure.connection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Connection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) value,
    required TResult Function() connection,
    required TResult Function(
            int? code, String? message, BaseResponse? response)
        serverError,
    required TResult Function(String? message) localError,
    required TResult Function(String? message) unexpected,
  }) {
    return connection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? value,
    TResult Function()? connection,
    TResult Function(int? code, String? message, BaseResponse? response)?
        serverError,
    TResult Function(String? message)? localError,
    TResult Function(String? message)? unexpected,
  }) {
    return connection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? value,
    TResult Function()? connection,
    TResult Function(int? code, String? message, BaseResponse? response)?
        serverError,
    TResult Function(String? message)? localError,
    TResult Function(String? message)? unexpected,
    required TResult orElse(),
  }) {
    if (connection != null) {
      return connection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Value value) value,
    required TResult Function(Connection value) connection,
    required TResult Function(ServerError value) serverError,
    required TResult Function(LocalError value) localError,
    required TResult Function(Unexpected value) unexpected,
  }) {
    return connection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Value value)? value,
    TResult Function(Connection value)? connection,
    TResult Function(ServerError value)? serverError,
    TResult Function(LocalError value)? localError,
    TResult Function(Unexpected value)? unexpected,
  }) {
    return connection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Value value)? value,
    TResult Function(Connection value)? connection,
    TResult Function(ServerError value)? serverError,
    TResult Function(LocalError value)? localError,
    TResult Function(Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (connection != null) {
      return connection(this);
    }
    return orElse();
  }
}

abstract class Connection implements Failure {
  const factory Connection() = _$Connection;
}

/// @nodoc
abstract class _$$ServerErrorCopyWith<$Res> {
  factory _$$ServerErrorCopyWith(
          _$ServerError value, $Res Function(_$ServerError) then) =
      __$$ServerErrorCopyWithImpl<$Res>;
  $Res call({int? code, String? message, BaseResponse? response});
}

/// @nodoc
class __$$ServerErrorCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$ServerErrorCopyWith<$Res> {
  __$$ServerErrorCopyWithImpl(
      _$ServerError _value, $Res Function(_$ServerError) _then)
      : super(_value, (v) => _then(v as _$ServerError));

  @override
  _$ServerError get _value => super._value as _$ServerError;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? response = freezed,
  }) {
    return _then(_$ServerError(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BaseResponse?,
    ));
  }
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError({this.code, this.message, this.response});

  @override
  final int? code;
  @override
  final String? message;
  @override
  final BaseResponse? response;

  @override
  String toString() {
    return 'Failure.serverError(code: $code, message: $message, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerError &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$$ServerErrorCopyWith<_$ServerError> get copyWith =>
      __$$ServerErrorCopyWithImpl<_$ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) value,
    required TResult Function() connection,
    required TResult Function(
            int? code, String? message, BaseResponse? response)
        serverError,
    required TResult Function(String? message) localError,
    required TResult Function(String? message) unexpected,
  }) {
    return serverError(code, message, response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? value,
    TResult Function()? connection,
    TResult Function(int? code, String? message, BaseResponse? response)?
        serverError,
    TResult Function(String? message)? localError,
    TResult Function(String? message)? unexpected,
  }) {
    return serverError?.call(code, message, response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? value,
    TResult Function()? connection,
    TResult Function(int? code, String? message, BaseResponse? response)?
        serverError,
    TResult Function(String? message)? localError,
    TResult Function(String? message)? unexpected,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(code, message, response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Value value) value,
    required TResult Function(Connection value) connection,
    required TResult Function(ServerError value) serverError,
    required TResult Function(LocalError value) localError,
    required TResult Function(Unexpected value) unexpected,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Value value)? value,
    TResult Function(Connection value)? connection,
    TResult Function(ServerError value)? serverError,
    TResult Function(LocalError value)? localError,
    TResult Function(Unexpected value)? unexpected,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Value value)? value,
    TResult Function(Connection value)? connection,
    TResult Function(ServerError value)? serverError,
    TResult Function(LocalError value)? localError,
    TResult Function(Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements Failure {
  const factory ServerError(
      {final int? code,
      final String? message,
      final BaseResponse? response}) = _$ServerError;

  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  BaseResponse? get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ServerErrorCopyWith<_$ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalErrorCopyWith<$Res> {
  factory _$$LocalErrorCopyWith(
          _$LocalError value, $Res Function(_$LocalError) then) =
      __$$LocalErrorCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$$LocalErrorCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$LocalErrorCopyWith<$Res> {
  __$$LocalErrorCopyWithImpl(
      _$LocalError _value, $Res Function(_$LocalError) _then)
      : super(_value, (v) => _then(v as _$LocalError));

  @override
  _$LocalError get _value => super._value as _$LocalError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$LocalError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LocalError implements LocalError {
  const _$LocalError({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.localError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$LocalErrorCopyWith<_$LocalError> get copyWith =>
      __$$LocalErrorCopyWithImpl<_$LocalError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) value,
    required TResult Function() connection,
    required TResult Function(
            int? code, String? message, BaseResponse? response)
        serverError,
    required TResult Function(String? message) localError,
    required TResult Function(String? message) unexpected,
  }) {
    return localError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? value,
    TResult Function()? connection,
    TResult Function(int? code, String? message, BaseResponse? response)?
        serverError,
    TResult Function(String? message)? localError,
    TResult Function(String? message)? unexpected,
  }) {
    return localError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? value,
    TResult Function()? connection,
    TResult Function(int? code, String? message, BaseResponse? response)?
        serverError,
    TResult Function(String? message)? localError,
    TResult Function(String? message)? unexpected,
    required TResult orElse(),
  }) {
    if (localError != null) {
      return localError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Value value) value,
    required TResult Function(Connection value) connection,
    required TResult Function(ServerError value) serverError,
    required TResult Function(LocalError value) localError,
    required TResult Function(Unexpected value) unexpected,
  }) {
    return localError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Value value)? value,
    TResult Function(Connection value)? connection,
    TResult Function(ServerError value)? serverError,
    TResult Function(LocalError value)? localError,
    TResult Function(Unexpected value)? unexpected,
  }) {
    return localError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Value value)? value,
    TResult Function(Connection value)? connection,
    TResult Function(ServerError value)? serverError,
    TResult Function(LocalError value)? localError,
    TResult Function(Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (localError != null) {
      return localError(this);
    }
    return orElse();
  }
}

abstract class LocalError implements Failure {
  const factory LocalError({final String? message}) = _$LocalError;

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$LocalErrorCopyWith<_$LocalError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnexpectedCopyWith<$Res> {
  factory _$$UnexpectedCopyWith(
          _$Unexpected value, $Res Function(_$Unexpected) then) =
      __$$UnexpectedCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$$UnexpectedCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$UnexpectedCopyWith<$Res> {
  __$$UnexpectedCopyWithImpl(
      _$Unexpected _value, $Res Function(_$Unexpected) _then)
      : super(_value, (v) => _then(v as _$Unexpected));

  @override
  _$Unexpected get _value => super._value as _$Unexpected;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$Unexpected(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$Unexpected implements Unexpected {
  const _$Unexpected(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.unexpected(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Unexpected &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$UnexpectedCopyWith<_$Unexpected> get copyWith =>
      __$$UnexpectedCopyWithImpl<_$Unexpected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) value,
    required TResult Function() connection,
    required TResult Function(
            int? code, String? message, BaseResponse? response)
        serverError,
    required TResult Function(String? message) localError,
    required TResult Function(String? message) unexpected,
  }) {
    return unexpected(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? value,
    TResult Function()? connection,
    TResult Function(int? code, String? message, BaseResponse? response)?
        serverError,
    TResult Function(String? message)? localError,
    TResult Function(String? message)? unexpected,
  }) {
    return unexpected?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? value,
    TResult Function()? connection,
    TResult Function(int? code, String? message, BaseResponse? response)?
        serverError,
    TResult Function(String? message)? localError,
    TResult Function(String? message)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Value value) value,
    required TResult Function(Connection value) connection,
    required TResult Function(ServerError value) serverError,
    required TResult Function(LocalError value) localError,
    required TResult Function(Unexpected value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Value value)? value,
    TResult Function(Connection value)? connection,
    TResult Function(ServerError value)? serverError,
    TResult Function(LocalError value)? localError,
    TResult Function(Unexpected value)? unexpected,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Value value)? value,
    TResult Function(Connection value)? connection,
    TResult Function(ServerError value)? serverError,
    TResult Function(LocalError value)? localError,
    TResult Function(Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class Unexpected implements Failure {
  const factory Unexpected(final String? message) = _$Unexpected;

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$UnexpectedCopyWith<_$Unexpected> get copyWith =>
      throw _privateConstructorUsedError;
}
