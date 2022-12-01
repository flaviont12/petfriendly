part of 'create_pet_bloc.dart';

@freezed
class CreatePetState with _$CreatePetState {
  const factory CreatePetState.createPetInitial() = CreatePetInitial;
  const factory CreatePetState.createPetLoading() = CreatePetLoading;
  const factory CreatePetState.createPetSuccess() = CreatePetSuccess;
  const factory CreatePetState.createPetError(String error) = CreatePetError;
}
