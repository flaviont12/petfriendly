import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet_model.freezed.dart';
part 'pet_model.g.dart';

@freezed
class PetModel with _$PetModel {
  const factory PetModel({
    required String nome,
    required String tipoAnimal,
    required String raca,
    required String dataNascimento,
    required double peso,
    required String sexo,
}) = _PetModel;

  factory PetModel.fromJson(Map<String, Object?> json) => _$PetModelFromJson(json);

}