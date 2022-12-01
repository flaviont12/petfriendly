import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:petfriendly/src/data/models/pet/pet_model.dart';

part 'create_pet_event.dart';
part 'create_pet_state.dart';
part 'create_pet_bloc.freezed.dart';

class CreatePetBloc extends Bloc<CreatePetEvent, CreatePetState> {

  CollectionReference pets = FirebaseFirestore.instance.collection('pets');

  CreatePetBloc() : super(const CreatePetInitial()) {
    on<CreatePetRequest>((event, emit) async {
      emit(const CreatePetLoading());
      
      try {
        await pets.add(event.pet.toJson());
        emit(const CreatePetSuccess());
      } catch (e) {
        emit(CreatePetError(e.toString()));
      }
    });
  }
}
