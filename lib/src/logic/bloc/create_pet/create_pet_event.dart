part of 'create_pet_bloc.dart';

@freezed
class CreatePetEvent with _$CreatePetEvent {
  const factory CreatePetEvent.createPetRequest({
    required PetModel pet
  }) = CreatePetRequest;
}
