// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginRequest,
    required TResult Function() authStartRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? loginRequest,
    TResult Function()? authStartRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginRequest,
    TResult Function()? authStartRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginRequest value) loginRequest,
    required TResult Function(AuthStartRequest value) authStartRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginRequest value)? loginRequest,
    TResult Function(AuthStartRequest value)? authStartRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginRequest value)? loginRequest,
    TResult Function(AuthStartRequest value)? authStartRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$$LoginRequestCopyWith<$Res> {
  factory _$$LoginRequestCopyWith(
          _$LoginRequest value, $Res Function(_$LoginRequest) then) =
      __$$LoginRequestCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginRequestCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$LoginRequestCopyWith<$Res> {
  __$$LoginRequestCopyWithImpl(
      _$LoginRequest _value, $Res Function(_$LoginRequest) _then)
      : super(_value, (v) => _then(v as _$LoginRequest));

  @override
  _$LoginRequest get _value => super._value as _$LoginRequest;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$LoginRequest(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginRequest implements LoginRequest {
  const _$LoginRequest({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.loginRequest(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginRequest &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$LoginRequestCopyWith<_$LoginRequest> get copyWith =>
      __$$LoginRequestCopyWithImpl<_$LoginRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginRequest,
    required TResult Function() authStartRequest,
  }) {
    return loginRequest(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? loginRequest,
    TResult Function()? authStartRequest,
  }) {
    return loginRequest?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginRequest,
    TResult Function()? authStartRequest,
    required TResult orElse(),
  }) {
    if (loginRequest != null) {
      return loginRequest(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginRequest value) loginRequest,
    required TResult Function(AuthStartRequest value) authStartRequest,
  }) {
    return loginRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginRequest value)? loginRequest,
    TResult Function(AuthStartRequest value)? authStartRequest,
  }) {
    return loginRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginRequest value)? loginRequest,
    TResult Function(AuthStartRequest value)? authStartRequest,
    required TResult orElse(),
  }) {
    if (loginRequest != null) {
      return loginRequest(this);
    }
    return orElse();
  }
}

abstract class LoginRequest implements AuthEvent {
  const factory LoginRequest(
      {required final String email,
      required final String password}) = _$LoginRequest;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$LoginRequestCopyWith<_$LoginRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthStartRequestCopyWith<$Res> {
  factory _$$AuthStartRequestCopyWith(
          _$AuthStartRequest value, $Res Function(_$AuthStartRequest) then) =
      __$$AuthStartRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStartRequestCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$AuthStartRequestCopyWith<$Res> {
  __$$AuthStartRequestCopyWithImpl(
      _$AuthStartRequest _value, $Res Function(_$AuthStartRequest) _then)
      : super(_value, (v) => _then(v as _$AuthStartRequest));

  @override
  _$AuthStartRequest get _value => super._value as _$AuthStartRequest;
}

/// @nodoc

class _$AuthStartRequest implements AuthStartRequest {
  const _$AuthStartRequest();

  @override
  String toString() {
    return 'AuthEvent.authStartRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStartRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginRequest,
    required TResult Function() authStartRequest,
  }) {
    return authStartRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? loginRequest,
    TResult Function()? authStartRequest,
  }) {
    return authStartRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginRequest,
    TResult Function()? authStartRequest,
    required TResult orElse(),
  }) {
    if (authStartRequest != null) {
      return authStartRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginRequest value) loginRequest,
    required TResult Function(AuthStartRequest value) authStartRequest,
  }) {
    return authStartRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginRequest value)? loginRequest,
    TResult Function(AuthStartRequest value)? authStartRequest,
  }) {
    return authStartRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginRequest value)? loginRequest,
    TResult Function(AuthStartRequest value)? authStartRequest,
    required TResult orElse(),
  }) {
    if (authStartRequest != null) {
      return authStartRequest(this);
    }
    return orElse();
  }
}

abstract class AuthStartRequest implements AuthEvent {
  const factory AuthStartRequest() = _$AuthStartRequest;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authStarted,
    required TResult Function() authLoading,
    required TResult Function() authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(String error) authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authStarted,
    TResult Function()? authLoading,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function(String error)? authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authStarted,
    TResult Function()? authLoading,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function(String error)? authError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStarted value) authStarted,
    required TResult Function(AuthLoading value) authLoading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unAuthenticated,
    required TResult Function(AuthError value) authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStarted value)? authStarted,
    TResult Function(AuthLoading value)? authLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(AuthError value)? authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStarted value)? authStarted,
    TResult Function(AuthLoading value)? authLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(AuthError value)? authError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$$AuthStartedCopyWith<$Res> {
  factory _$$AuthStartedCopyWith(
          _$AuthStarted value, $Res Function(_$AuthStarted) then) =
      __$$AuthStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStartedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$AuthStartedCopyWith<$Res> {
  __$$AuthStartedCopyWithImpl(
      _$AuthStarted _value, $Res Function(_$AuthStarted) _then)
      : super(_value, (v) => _then(v as _$AuthStarted));

  @override
  _$AuthStarted get _value => super._value as _$AuthStarted;
}

/// @nodoc

class _$AuthStarted implements AuthStarted {
  const _$AuthStarted();

  @override
  String toString() {
    return 'AuthState.authStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authStarted,
    required TResult Function() authLoading,
    required TResult Function() authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(String error) authError,
  }) {
    return authStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authStarted,
    TResult Function()? authLoading,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function(String error)? authError,
  }) {
    return authStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authStarted,
    TResult Function()? authLoading,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function(String error)? authError,
    required TResult orElse(),
  }) {
    if (authStarted != null) {
      return authStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStarted value) authStarted,
    required TResult Function(AuthLoading value) authLoading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unAuthenticated,
    required TResult Function(AuthError value) authError,
  }) {
    return authStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStarted value)? authStarted,
    TResult Function(AuthLoading value)? authLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(AuthError value)? authError,
  }) {
    return authStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStarted value)? authStarted,
    TResult Function(AuthLoading value)? authLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(AuthError value)? authError,
    required TResult orElse(),
  }) {
    if (authStarted != null) {
      return authStarted(this);
    }
    return orElse();
  }
}

abstract class AuthStarted implements AuthState {
  const factory AuthStarted() = _$AuthStarted;
}

/// @nodoc
abstract class _$$AuthLoadingCopyWith<$Res> {
  factory _$$AuthLoadingCopyWith(
          _$AuthLoading value, $Res Function(_$AuthLoading) then) =
      __$$AuthLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLoadingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$AuthLoadingCopyWith<$Res> {
  __$$AuthLoadingCopyWithImpl(
      _$AuthLoading _value, $Res Function(_$AuthLoading) _then)
      : super(_value, (v) => _then(v as _$AuthLoading));

  @override
  _$AuthLoading get _value => super._value as _$AuthLoading;
}

/// @nodoc

class _$AuthLoading implements AuthLoading {
  const _$AuthLoading();

  @override
  String toString() {
    return 'AuthState.authLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authStarted,
    required TResult Function() authLoading,
    required TResult Function() authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(String error) authError,
  }) {
    return authLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authStarted,
    TResult Function()? authLoading,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function(String error)? authError,
  }) {
    return authLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authStarted,
    TResult Function()? authLoading,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function(String error)? authError,
    required TResult orElse(),
  }) {
    if (authLoading != null) {
      return authLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStarted value) authStarted,
    required TResult Function(AuthLoading value) authLoading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unAuthenticated,
    required TResult Function(AuthError value) authError,
  }) {
    return authLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStarted value)? authStarted,
    TResult Function(AuthLoading value)? authLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(AuthError value)? authError,
  }) {
    return authLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStarted value)? authStarted,
    TResult Function(AuthLoading value)? authLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(AuthError value)? authError,
    required TResult orElse(),
  }) {
    if (authLoading != null) {
      return authLoading(this);
    }
    return orElse();
  }
}

abstract class AuthLoading implements AuthState {
  const factory AuthLoading() = _$AuthLoading;
}

/// @nodoc
abstract class _$$AuthenticatedCopyWith<$Res> {
  factory _$$AuthenticatedCopyWith(
          _$Authenticated value, $Res Function(_$Authenticated) then) =
      __$$AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$AuthenticatedCopyWith<$Res> {
  __$$AuthenticatedCopyWithImpl(
      _$Authenticated _value, $Res Function(_$Authenticated) _then)
      : super(_value, (v) => _then(v as _$Authenticated));

  @override
  _$Authenticated get _value => super._value as _$Authenticated;
}

/// @nodoc

class _$Authenticated implements Authenticated {
  const _$Authenticated();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authStarted,
    required TResult Function() authLoading,
    required TResult Function() authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(String error) authError,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authStarted,
    TResult Function()? authLoading,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function(String error)? authError,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authStarted,
    TResult Function()? authLoading,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function(String error)? authError,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStarted value) authStarted,
    required TResult Function(AuthLoading value) authLoading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unAuthenticated,
    required TResult Function(AuthError value) authError,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStarted value)? authStarted,
    TResult Function(AuthLoading value)? authLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(AuthError value)? authError,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStarted value)? authStarted,
    TResult Function(AuthLoading value)? authLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(AuthError value)? authError,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthState {
  const factory Authenticated() = _$Authenticated;
}

/// @nodoc
abstract class _$$UnAuthenticatedCopyWith<$Res> {
  factory _$$UnAuthenticatedCopyWith(
          _$UnAuthenticated value, $Res Function(_$UnAuthenticated) then) =
      __$$UnAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnAuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$UnAuthenticatedCopyWith<$Res> {
  __$$UnAuthenticatedCopyWithImpl(
      _$UnAuthenticated _value, $Res Function(_$UnAuthenticated) _then)
      : super(_value, (v) => _then(v as _$UnAuthenticated));

  @override
  _$UnAuthenticated get _value => super._value as _$UnAuthenticated;
}

/// @nodoc

class _$UnAuthenticated implements UnAuthenticated {
  const _$UnAuthenticated();

  @override
  String toString() {
    return 'AuthState.unAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authStarted,
    required TResult Function() authLoading,
    required TResult Function() authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(String error) authError,
  }) {
    return unAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authStarted,
    TResult Function()? authLoading,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function(String error)? authError,
  }) {
    return unAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authStarted,
    TResult Function()? authLoading,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function(String error)? authError,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStarted value) authStarted,
    required TResult Function(AuthLoading value) authLoading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unAuthenticated,
    required TResult Function(AuthError value) authError,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStarted value)? authStarted,
    TResult Function(AuthLoading value)? authLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(AuthError value)? authError,
  }) {
    return unAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStarted value)? authStarted,
    TResult Function(AuthLoading value)? authLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(AuthError value)? authError,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class UnAuthenticated implements AuthState {
  const factory UnAuthenticated() = _$UnAuthenticated;
}

/// @nodoc
abstract class _$$AuthErrorCopyWith<$Res> {
  factory _$$AuthErrorCopyWith(
          _$AuthError value, $Res Function(_$AuthError) then) =
      __$$AuthErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$AuthErrorCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$AuthErrorCopyWith<$Res> {
  __$$AuthErrorCopyWithImpl(
      _$AuthError _value, $Res Function(_$AuthError) _then)
      : super(_value, (v) => _then(v as _$AuthError));

  @override
  _$AuthError get _value => super._value as _$AuthError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$AuthError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthError implements AuthError {
  const _$AuthError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState.authError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$AuthErrorCopyWith<_$AuthError> get copyWith =>
      __$$AuthErrorCopyWithImpl<_$AuthError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authStarted,
    required TResult Function() authLoading,
    required TResult Function() authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(String error) authError,
  }) {
    return authError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authStarted,
    TResult Function()? authLoading,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function(String error)? authError,
  }) {
    return authError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authStarted,
    TResult Function()? authLoading,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function(String error)? authError,
    required TResult orElse(),
  }) {
    if (authError != null) {
      return authError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStarted value) authStarted,
    required TResult Function(AuthLoading value) authLoading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unAuthenticated,
    required TResult Function(AuthError value) authError,
  }) {
    return authError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStarted value)? authStarted,
    TResult Function(AuthLoading value)? authLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(AuthError value)? authError,
  }) {
    return authError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStarted value)? authStarted,
    TResult Function(AuthLoading value)? authLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(AuthError value)? authError,
    required TResult orElse(),
  }) {
    if (authError != null) {
      return authError(this);
    }
    return orElse();
  }
}

abstract class AuthError implements AuthState {
  const factory AuthError(final String error) = _$AuthError;

  String get error;
  @JsonKey(ignore: true)
  _$$AuthErrorCopyWith<_$AuthError> get copyWith =>
      throw _privateConstructorUsedError;
}
