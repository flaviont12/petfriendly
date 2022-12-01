import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petfriendly/src/core/constants/routes.dart';
import 'package:petfriendly/src/data/models/pet/pet_model.dart';
import 'package:petfriendly/src/logic/bloc/create_pet/create_pet_bloc.dart';
import 'package:petfriendly/src/presentation/widgets/button_register_save.dart';
import 'package:petfriendly/src/services/auth/auth_service.dart';
import 'package:petfriendly/src/services/crud/pets_service.dart';

import '../../widgets/custom_text_field.dart';

class NewPetScreen extends StatelessWidget {
  const NewPetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreatePetBloc(),
      child: const NewPetView(),
    );
  }
}


class NewPetView extends StatefulWidget {
  const NewPetView({Key? key}) : super(key: key);

  @override
  State<NewPetView> createState() => _NewPetViewState();
}

class _NewPetViewState extends State<NewPetView> {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _tipoController = TextEditingController();
  final TextEditingController _racaController = TextEditingController();
  final TextEditingController _dataNascimentoController =
  TextEditingController();
  final TextEditingController _sexoController = TextEditingController();
  final TextEditingController _pesoController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  // void _textControllerListener() async {
  //   final pet = _pet;
  //   if (pet == null) {
  //     return;
  //   }
  //   final nome = _nomeController.text;
  //   final tipo = _tipoController.text;
  //   final raca = _racaController.text;
  //   final dataNascimento = _dataNascimentoController.text;
  //   final sexo = _sexoController.text;
  //   final peso = int.parse(_pesoController.text);
  //   await _petsService.updatePet(
  //     pet: pet,
  //     nome: nome,
  //     tipo: tipo,
  //     raca: raca,
  //     dataNascimento: dataNascimento,
  //     sexo: sexo,
  //     peso: peso,
  //   );
  // }

  // void _setupTextControllerListener() async {
  //   _nomeController.removeListener(_textControllerListener);
  //   _nomeController.addListener(_textControllerListener);
  //
  //   _tipoController.removeListener(_textControllerListener);
  //   _tipoController.addListener(_textControllerListener);
  //
  //   _racaController.removeListener(_textControllerListener);
  //   _racaController.addListener(_textControllerListener);
  //
  //   _dataNascimentoController.removeListener(_textControllerListener);
  //   _dataNascimentoController.addListener(_textControllerListener);
  //
  //   _sexoController.removeListener(_textControllerListener);
  //   _sexoController.addListener(_textControllerListener);
  //
  //   _pesoController.removeListener(_textControllerListener);
  //   _pesoController.addListener(_textControllerListener);
  // }

  // Future<DatabasePet> createNewPet() async {
  //   final existingPet = _pet;
  //   if (existingPet != null) {
  //     return existingPet;
  //   }
  //   final currentUser = AuthService.firebase().currentUser!;
  //   final email = currentUser.email!;
  //   final owner = await _petsService.getUser(email: email);
  //   return await _petsService.createPet(owner: owner);
  // }

  // void _deletePetIfNomeIsEmpty() {
  //   final pet = _pet;
  //   if (_nomeController.text.isEmpty && pet != null) {
  //     _petsService.deletePet(id: pet.id);
  //   }
  // }

  void _handleSavePet(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      BlocProvider.of<CreatePetBloc>(context).add(CreatePetRequest(
          pet: PetModel(
            nome: _nomeController.text,
            tipoAnimal: _tipoController.text,
            raca: _racaController.text,
            dataNascimento: _dataNascimentoController.text,
            peso: double.parse(_pesoController.text),
            sexo: _sexoController.text,
          )));
    }
  }

  @override
  void dispose() {
    _nomeController.dispose();
    _tipoController.dispose();
    _racaController.dispose();
    _dataNascimentoController.dispose();
    _sexoController.dispose();
    _pesoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 22,
        ),
        title: const Text(
          "Adicionar Pet",
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Montserrat',
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        shadowColor: Color(0xFF07A5A8),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 100 * 0.2, 20, 0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const Text(
                  "Adicione seu amiguinho para acompanhar a saúde dele no PetFriendly!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
                CustomTextField(
                    label: "Nome",
                    isPasswordType: false,
                    controller: _nomeController),
                CustomTextField(
                    label: "Tipo de Animal",
                    isPasswordType: false,
                    controller: _tipoController),
                CustomTextField(
                    label: "Raça",
                    isPasswordType: false,
                    controller: _racaController),
                CustomTextField(
                    label: "Data de Nascimento",
                    isPasswordType: false,
                    controller: _dataNascimentoController),
                // reusableTextField("Peso", false, _pesoController),
                // reusableTextField("Sexo", false, _sexoController),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 160,
                      child: CustomTextField(
                          label: "Peso",
                          isPasswordType: false,
                          controller: _pesoController),
                    ),
                    SizedBox(
                      width: 160,
                      child: CustomTextField(
                          label: "Sexo",
                          isPasswordType: false,
                          controller: _sexoController),
                    )
                  ],
                ),
                BtnCadastrar(
                    func: () => _handleSavePet(context), text: "Adicionar Pet")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
