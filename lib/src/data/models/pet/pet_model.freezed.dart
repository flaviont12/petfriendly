// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pet_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PetModel _$PetModelFromJson(Map<String, dynamic> json) {
  return _PetModel.fromJson(json);
}

/// @nodoc
mixin _$PetModel {
  String get nome => throw _privateConstructorUsedError;
  String get tipoAnimal => throw _privateConstructorUsedError;
  String get raca => throw _privateConstructorUsedError;
  String get dataNascimento => throw _privateConstructorUsedError;
  double get peso => throw _privateConstructorUsedError;
  String get sexo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetModelCopyWith<PetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetModelCopyWith<$Res> {
  factory $PetModelCopyWith(PetModel value, $Res Function(PetModel) then) =
      _$PetModelCopyWithImpl<$Res>;
  $Res call(
      {String nome,
      String tipoAnimal,
      String raca,
      String dataNascimento,
      double peso,
      String sexo});
}

/// @nodoc
class _$PetModelCopyWithImpl<$Res> implements $PetModelCopyWith<$Res> {
  _$PetModelCopyWithImpl(this._value, this._then);

  final PetModel _value;
  // ignore: unused_field
  final $Res Function(PetModel) _then;

  @override
  $Res call({
    Object? nome = freezed,
    Object? tipoAnimal = freezed,
    Object? raca = freezed,
    Object? dataNascimento = freezed,
    Object? peso = freezed,
    Object? sexo = freezed,
  }) {
    return _then(_value.copyWith(
      nome: nome == freezed
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      tipoAnimal: tipoAnimal == freezed
          ? _value.tipoAnimal
          : tipoAnimal // ignore: cast_nullable_to_non_nullable
              as String,
      raca: raca == freezed
          ? _value.raca
          : raca // ignore: cast_nullable_to_non_nullable
              as String,
      dataNascimento: dataNascimento == freezed
          ? _value.dataNascimento
          : dataNascimento // ignore: cast_nullable_to_non_nullable
              as String,
      peso: peso == freezed
          ? _value.peso
          : peso // ignore: cast_nullable_to_non_nullable
              as double,
      sexo: sexo == freezed
          ? _value.sexo
          : sexo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PetModelCopyWith<$Res> implements $PetModelCopyWith<$Res> {
  factory _$$_PetModelCopyWith(
          _$_PetModel value, $Res Function(_$_PetModel) then) =
      __$$_PetModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String nome,
      String tipoAnimal,
      String raca,
      String dataNascimento,
      double peso,
      String sexo});
}

/// @nodoc
class __$$_PetModelCopyWithImpl<$Res> extends _$PetModelCopyWithImpl<$Res>
    implements _$$_PetModelCopyWith<$Res> {
  __$$_PetModelCopyWithImpl(
      _$_PetModel _value, $Res Function(_$_PetModel) _then)
      : super(_value, (v) => _then(v as _$_PetModel));

  @override
  _$_PetModel get _value => super._value as _$_PetModel;

  @override
  $Res call({
    Object? nome = freezed,
    Object? tipoAnimal = freezed,
    Object? raca = freezed,
    Object? dataNascimento = freezed,
    Object? peso = freezed,
    Object? sexo = freezed,
  }) {
    return _then(_$_PetModel(
      nome: nome == freezed
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      tipoAnimal: tipoAnimal == freezed
          ? _value.tipoAnimal
          : tipoAnimal // ignore: cast_nullable_to_non_nullable
              as String,
      raca: raca == freezed
          ? _value.raca
          : raca // ignore: cast_nullable_to_non_nullable
              as String,
      dataNascimento: dataNascimento == freezed
          ? _value.dataNascimento
          : dataNascimento // ignore: cast_nullable_to_non_nullable
              as String,
      peso: peso == freezed
          ? _value.peso
          : peso // ignore: cast_nullable_to_non_nullable
              as double,
      sexo: sexo == freezed
          ? _value.sexo
          : sexo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PetModel implements _PetModel {
  const _$_PetModel(
      {required this.nome,
      required this.tipoAnimal,
      required this.raca,
      required this.dataNascimento,
      required this.peso,
      required this.sexo});

  factory _$_PetModel.fromJson(Map<String, dynamic> json) =>
      _$$_PetModelFromJson(json);

  @override
  final String nome;
  @override
  final String tipoAnimal;
  @override
  final String raca;
  @override
  final String dataNascimento;
  @override
  final double peso;
  @override
  final String sexo;

  @override
  String toString() {
    return 'PetModel(nome: $nome, tipoAnimal: $tipoAnimal, raca: $raca, dataNascimento: $dataNascimento, peso: $peso, sexo: $sexo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PetModel &&
            const DeepCollectionEquality().equals(other.nome, nome) &&
            const DeepCollectionEquality()
                .equals(other.tipoAnimal, tipoAnimal) &&
            const DeepCollectionEquality().equals(other.raca, raca) &&
            const DeepCollectionEquality()
                .equals(other.dataNascimento, dataNascimento) &&
            const DeepCollectionEquality().equals(other.peso, peso) &&
            const DeepCollectionEquality().equals(other.sexo, sexo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nome),
      const DeepCollectionEquality().hash(tipoAnimal),
      const DeepCollectionEquality().hash(raca),
      const DeepCollectionEquality().hash(dataNascimento),
      const DeepCollectionEquality().hash(peso),
      const DeepCollectionEquality().hash(sexo));

  @JsonKey(ignore: true)
  @override
  _$$_PetModelCopyWith<_$_PetModel> get copyWith =>
      __$$_PetModelCopyWithImpl<_$_PetModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PetModelToJson(this);
  }
}

abstract class _PetModel implements PetModel {
  const factory _PetModel(
      {required final String nome,
      required final String tipoAnimal,
      required final String raca,
      required final String dataNascimento,
      required final double peso,
      required final String sexo}) = _$_PetModel;

  factory _PetModel.fromJson(Map<String, dynamic> json) = _$_PetModel.fromJson;

  @override
  String get nome;
  @override
  String get tipoAnimal;
  @override
  String get raca;
  @override
  String get dataNascimento;
  @override
  double get peso;
  @override
  String get sexo;
  @override
  @JsonKey(ignore: true)
  _$$_PetModelCopyWith<_$_PetModel> get copyWith =>
      throw _privateConstructorUsedError;
}
