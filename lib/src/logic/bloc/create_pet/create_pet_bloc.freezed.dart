// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_pet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreatePetEvent {
  PetModel get pet => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PetModel pet) createPetRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PetModel pet)? createPetRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PetModel pet)? createPetRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreatePetRequest value) createPetRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreatePetRequest value)? createPetRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatePetRequest value)? createPetRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreatePetEventCopyWith<CreatePetEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePetEventCopyWith<$Res> {
  factory $CreatePetEventCopyWith(
          CreatePetEvent value, $Res Function(CreatePetEvent) then) =
      _$CreatePetEventCopyWithImpl<$Res>;
  $Res call({PetModel pet});

  $PetModelCopyWith<$Res> get pet;
}

/// @nodoc
class _$CreatePetEventCopyWithImpl<$Res>
    implements $CreatePetEventCopyWith<$Res> {
  _$CreatePetEventCopyWithImpl(this._value, this._then);

  final CreatePetEvent _value;
  // ignore: unused_field
  final $Res Function(CreatePetEvent) _then;

  @override
  $Res call({
    Object? pet = freezed,
  }) {
    return _then(_value.copyWith(
      pet: pet == freezed
          ? _value.pet
          : pet // ignore: cast_nullable_to_non_nullable
              as PetModel,
    ));
  }

  @override
  $PetModelCopyWith<$Res> get pet {
    return $PetModelCopyWith<$Res>(_value.pet, (value) {
      return _then(_value.copyWith(pet: value));
    });
  }
}

/// @nodoc
abstract class _$$CreatePetRequestCopyWith<$Res>
    implements $CreatePetEventCopyWith<$Res> {
  factory _$$CreatePetRequestCopyWith(
          _$CreatePetRequest value, $Res Function(_$CreatePetRequest) then) =
      __$$CreatePetRequestCopyWithImpl<$Res>;
  @override
  $Res call({PetModel pet});

  @override
  $PetModelCopyWith<$Res> get pet;
}

/// @nodoc
class __$$CreatePetRequestCopyWithImpl<$Res>
    extends _$CreatePetEventCopyWithImpl<$Res>
    implements _$$CreatePetRequestCopyWith<$Res> {
  __$$CreatePetRequestCopyWithImpl(
      _$CreatePetRequest _value, $Res Function(_$CreatePetRequest) _then)
      : super(_value, (v) => _then(v as _$CreatePetRequest));

  @override
  _$CreatePetRequest get _value => super._value as _$CreatePetRequest;

  @override
  $Res call({
    Object? pet = freezed,
  }) {
    return _then(_$CreatePetRequest(
      pet: pet == freezed
          ? _value.pet
          : pet // ignore: cast_nullable_to_non_nullable
              as PetModel,
    ));
  }
}

/// @nodoc

class _$CreatePetRequest implements CreatePetRequest {
  const _$CreatePetRequest({required this.pet});

  @override
  final PetModel pet;

  @override
  String toString() {
    return 'CreatePetEvent.createPetRequest(pet: $pet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePetRequest &&
            const DeepCollectionEquality().equals(other.pet, pet));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pet));

  @JsonKey(ignore: true)
  @override
  _$$CreatePetRequestCopyWith<_$CreatePetRequest> get copyWith =>
      __$$CreatePetRequestCopyWithImpl<_$CreatePetRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PetModel pet) createPetRequest,
  }) {
    return createPetRequest(pet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PetModel pet)? createPetRequest,
  }) {
    return createPetRequest?.call(pet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PetModel pet)? createPetRequest,
    required TResult orElse(),
  }) {
    if (createPetRequest != null) {
      return createPetRequest(pet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreatePetRequest value) createPetRequest,
  }) {
    return createPetRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreatePetRequest value)? createPetRequest,
  }) {
    return createPetRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatePetRequest value)? createPetRequest,
    required TResult orElse(),
  }) {
    if (createPetRequest != null) {
      return createPetRequest(this);
    }
    return orElse();
  }
}

abstract class CreatePetRequest implements CreatePetEvent {
  const factory CreatePetRequest({required final PetModel pet}) =
      _$CreatePetRequest;

  @override
  PetModel get pet;
  @override
  @JsonKey(ignore: true)
  _$$CreatePetRequestCopyWith<_$CreatePetRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreatePetState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createPetInitial,
    required TResult Function() createPetLoading,
    required TResult Function() createPetSuccess,
    required TResult Function(String error) createPetError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? createPetInitial,
    TResult Function()? createPetLoading,
    TResult Function()? createPetSuccess,
    TResult Function(String error)? createPetError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createPetInitial,
    TResult Function()? createPetLoading,
    TResult Function()? createPetSuccess,
    TResult Function(String error)? createPetError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreatePetInitial value) createPetInitial,
    required TResult Function(CreatePetLoading value) createPetLoading,
    required TResult Function(CreatePetSuccess value) createPetSuccess,
    required TResult Function(CreatePetError value) createPetError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreatePetInitial value)? createPetInitial,
    TResult Function(CreatePetLoading value)? createPetLoading,
    TResult Function(CreatePetSuccess value)? createPetSuccess,
    TResult Function(CreatePetError value)? createPetError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatePetInitial value)? createPetInitial,
    TResult Function(CreatePetLoading value)? createPetLoading,
    TResult Function(CreatePetSuccess value)? createPetSuccess,
    TResult Function(CreatePetError value)? createPetError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePetStateCopyWith<$Res> {
  factory $CreatePetStateCopyWith(
          CreatePetState value, $Res Function(CreatePetState) then) =
      _$CreatePetStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreatePetStateCopyWithImpl<$Res>
    implements $CreatePetStateCopyWith<$Res> {
  _$CreatePetStateCopyWithImpl(this._value, this._then);

  final CreatePetState _value;
  // ignore: unused_field
  final $Res Function(CreatePetState) _then;
}

/// @nodoc
abstract class _$$CreatePetInitialCopyWith<$Res> {
  factory _$$CreatePetInitialCopyWith(
          _$CreatePetInitial value, $Res Function(_$CreatePetInitial) then) =
      __$$CreatePetInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreatePetInitialCopyWithImpl<$Res>
    extends _$CreatePetStateCopyWithImpl<$Res>
    implements _$$CreatePetInitialCopyWith<$Res> {
  __$$CreatePetInitialCopyWithImpl(
      _$CreatePetInitial _value, $Res Function(_$CreatePetInitial) _then)
      : super(_value, (v) => _then(v as _$CreatePetInitial));

  @override
  _$CreatePetInitial get _value => super._value as _$CreatePetInitial;
}

/// @nodoc

class _$CreatePetInitial implements CreatePetInitial {
  const _$CreatePetInitial();

  @override
  String toString() {
    return 'CreatePetState.createPetInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreatePetInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createPetInitial,
    required TResult Function() createPetLoading,
    required TResult Function() createPetSuccess,
    required TResult Function(String error) createPetError,
  }) {
    return createPetInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? createPetInitial,
    TResult Function()? createPetLoading,
    TResult Function()? createPetSuccess,
    TResult Function(String error)? createPetError,
  }) {
    return createPetInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createPetInitial,
    TResult Function()? createPetLoading,
    TResult Function()? createPetSuccess,
    TResult Function(String error)? createPetError,
    required TResult orElse(),
  }) {
    if (createPetInitial != null) {
      return createPetInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreatePetInitial value) createPetInitial,
    required TResult Function(CreatePetLoading value) createPetLoading,
    required TResult Function(CreatePetSuccess value) createPetSuccess,
    required TResult Function(CreatePetError value) createPetError,
  }) {
    return createPetInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreatePetInitial value)? createPetInitial,
    TResult Function(CreatePetLoading value)? createPetLoading,
    TResult Function(CreatePetSuccess value)? createPetSuccess,
    TResult Function(CreatePetError value)? createPetError,
  }) {
    return createPetInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatePetInitial value)? createPetInitial,
    TResult Function(CreatePetLoading value)? createPetLoading,
    TResult Function(CreatePetSuccess value)? createPetSuccess,
    TResult Function(CreatePetError value)? createPetError,
    required TResult orElse(),
  }) {
    if (createPetInitial != null) {
      return createPetInitial(this);
    }
    return orElse();
  }
}

abstract class CreatePetInitial implements CreatePetState {
  const factory CreatePetInitial() = _$CreatePetInitial;
}

/// @nodoc
abstract class _$$CreatePetLoadingCopyWith<$Res> {
  factory _$$CreatePetLoadingCopyWith(
          _$CreatePetLoading value, $Res Function(_$CreatePetLoading) then) =
      __$$CreatePetLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreatePetLoadingCopyWithImpl<$Res>
    extends _$CreatePetStateCopyWithImpl<$Res>
    implements _$$CreatePetLoadingCopyWith<$Res> {
  __$$CreatePetLoadingCopyWithImpl(
      _$CreatePetLoading _value, $Res Function(_$CreatePetLoading) _then)
      : super(_value, (v) => _then(v as _$CreatePetLoading));

  @override
  _$CreatePetLoading get _value => super._value as _$CreatePetLoading;
}

/// @nodoc

class _$CreatePetLoading implements CreatePetLoading {
  const _$CreatePetLoading();

  @override
  String toString() {
    return 'CreatePetState.createPetLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreatePetLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createPetInitial,
    required TResult Function() createPetLoading,
    required TResult Function() createPetSuccess,
    required TResult Function(String error) createPetError,
  }) {
    return createPetLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? createPetInitial,
    TResult Function()? createPetLoading,
    TResult Function()? createPetSuccess,
    TResult Function(String error)? createPetError,
  }) {
    return createPetLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createPetInitial,
    TResult Function()? createPetLoading,
    TResult Function()? createPetSuccess,
    TResult Function(String error)? createPetError,
    required TResult orElse(),
  }) {
    if (createPetLoading != null) {
      return createPetLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreatePetInitial value) createPetInitial,
    required TResult Function(CreatePetLoading value) createPetLoading,
    required TResult Function(CreatePetSuccess value) createPetSuccess,
    required TResult Function(CreatePetError value) createPetError,
  }) {
    return createPetLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreatePetInitial value)? createPetInitial,
    TResult Function(CreatePetLoading value)? createPetLoading,
    TResult Function(CreatePetSuccess value)? createPetSuccess,
    TResult Function(CreatePetError value)? createPetError,
  }) {
    return createPetLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatePetInitial value)? createPetInitial,
    TResult Function(CreatePetLoading value)? createPetLoading,
    TResult Function(CreatePetSuccess value)? createPetSuccess,
    TResult Function(CreatePetError value)? createPetError,
    required TResult orElse(),
  }) {
    if (createPetLoading != null) {
      return createPetLoading(this);
    }
    return orElse();
  }
}

abstract class CreatePetLoading implements CreatePetState {
  const factory CreatePetLoading() = _$CreatePetLoading;
}

/// @nodoc
abstract class _$$CreatePetSuccessCopyWith<$Res> {
  factory _$$CreatePetSuccessCopyWith(
          _$CreatePetSuccess value, $Res Function(_$CreatePetSuccess) then) =
      __$$CreatePetSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreatePetSuccessCopyWithImpl<$Res>
    extends _$CreatePetStateCopyWithImpl<$Res>
    implements _$$CreatePetSuccessCopyWith<$Res> {
  __$$CreatePetSuccessCopyWithImpl(
      _$CreatePetSuccess _value, $Res Function(_$CreatePetSuccess) _then)
      : super(_value, (v) => _then(v as _$CreatePetSuccess));

  @override
  _$CreatePetSuccess get _value => super._value as _$CreatePetSuccess;
}

/// @nodoc

class _$CreatePetSuccess implements CreatePetSuccess {
  const _$CreatePetSuccess();

  @override
  String toString() {
    return 'CreatePetState.createPetSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreatePetSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createPetInitial,
    required TResult Function() createPetLoading,
    required TResult Function() createPetSuccess,
    required TResult Function(String error) createPetError,
  }) {
    return createPetSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? createPetInitial,
    TResult Function()? createPetLoading,
    TResult Function()? createPetSuccess,
    TResult Function(String error)? createPetError,
  }) {
    return createPetSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createPetInitial,
    TResult Function()? createPetLoading,
    TResult Function()? createPetSuccess,
    TResult Function(String error)? createPetError,
    required TResult orElse(),
  }) {
    if (createPetSuccess != null) {
      return createPetSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreatePetInitial value) createPetInitial,
    required TResult Function(CreatePetLoading value) createPetLoading,
    required TResult Function(CreatePetSuccess value) createPetSuccess,
    required TResult Function(CreatePetError value) createPetError,
  }) {
    return createPetSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreatePetInitial value)? createPetInitial,
    TResult Function(CreatePetLoading value)? createPetLoading,
    TResult Function(CreatePetSuccess value)? createPetSuccess,
    TResult Function(CreatePetError value)? createPetError,
  }) {
    return createPetSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatePetInitial value)? createPetInitial,
    TResult Function(CreatePetLoading value)? createPetLoading,
    TResult Function(CreatePetSuccess value)? createPetSuccess,
    TResult Function(CreatePetError value)? createPetError,
    required TResult orElse(),
  }) {
    if (createPetSuccess != null) {
      return createPetSuccess(this);
    }
    return orElse();
  }
}

abstract class CreatePetSuccess implements CreatePetState {
  const factory CreatePetSuccess() = _$CreatePetSuccess;
}

/// @nodoc
abstract class _$$CreatePetErrorCopyWith<$Res> {
  factory _$$CreatePetErrorCopyWith(
          _$CreatePetError value, $Res Function(_$CreatePetError) then) =
      __$$CreatePetErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$CreatePetErrorCopyWithImpl<$Res>
    extends _$CreatePetStateCopyWithImpl<$Res>
    implements _$$CreatePetErrorCopyWith<$Res> {
  __$$CreatePetErrorCopyWithImpl(
      _$CreatePetError _value, $Res Function(_$CreatePetError) _then)
      : super(_value, (v) => _then(v as _$CreatePetError));

  @override
  _$CreatePetError get _value => super._value as _$CreatePetError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$CreatePetError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreatePetError implements CreatePetError {
  const _$CreatePetError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CreatePetState.createPetError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePetError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$CreatePetErrorCopyWith<_$CreatePetError> get copyWith =>
      __$$CreatePetErrorCopyWithImpl<_$CreatePetError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createPetInitial,
    required TResult Function() createPetLoading,
    required TResult Function() createPetSuccess,
    required TResult Function(String error) createPetError,
  }) {
    return createPetError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? createPetInitial,
    TResult Function()? createPetLoading,
    TResult Function()? createPetSuccess,
    TResult Function(String error)? createPetError,
  }) {
    return createPetError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createPetInitial,
    TResult Function()? createPetLoading,
    TResult Function()? createPetSuccess,
    TResult Function(String error)? createPetError,
    required TResult orElse(),
  }) {
    if (createPetError != null) {
      return createPetError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreatePetInitial value) createPetInitial,
    required TResult Function(CreatePetLoading value) createPetLoading,
    required TResult Function(CreatePetSuccess value) createPetSuccess,
    required TResult Function(CreatePetError value) createPetError,
  }) {
    return createPetError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreatePetInitial value)? createPetInitial,
    TResult Function(CreatePetLoading value)? createPetLoading,
    TResult Function(CreatePetSuccess value)? createPetSuccess,
    TResult Function(CreatePetError value)? createPetError,
  }) {
    return createPetError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatePetInitial value)? createPetInitial,
    TResult Function(CreatePetLoading value)? createPetLoading,
    TResult Function(CreatePetSuccess value)? createPetSuccess,
    TResult Function(CreatePetError value)? createPetError,
    required TResult orElse(),
  }) {
    if (createPetError != null) {
      return createPetError(this);
    }
    return orElse();
  }
}

abstract class CreatePetError implements CreatePetState {
  const factory CreatePetError(final String error) = _$CreatePetError;

  String get error;
  @JsonKey(ignore: true)
  _$$CreatePetErrorCopyWith<_$CreatePetError> get copyWith =>
      throw _privateConstructorUsedError;
}
