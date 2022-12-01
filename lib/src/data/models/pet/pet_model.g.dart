// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PetModel _$$_PetModelFromJson(Map<String, dynamic> json) => _$_PetModel(
      nome: json['nome'] as String,
      tipoAnimal: json['tipoAnimal'] as String,
      raca: json['raca'] as String,
      dataNascimento: json['dataNascimento'] as String,
      peso: (json['peso'] as num).toDouble(),
      sexo: json['sexo'] as String,
    );

Map<String, dynamic> _$$_PetModelToJson(_$_PetModel instance) =>
    <String, dynamic>{
      'nome': instance.nome,
      'tipoAnimal': instance.tipoAnimal,
      'raca': instance.raca,
      'dataNascimento': instance.dataNascimento,
      'peso': instance.peso,
      'sexo': instance.sexo,
    };
