import 'package:flutter/material.dart';
import 'package:petfriendly/services/auth/auth_service.dart';
import 'package:petfriendly/services/crud/pets_service.dart';

import '../../widgets/textField_component.dart';

class NewPetView extends StatefulWidget {
  const NewPetView({Key? key}) : super(key: key);

  @override
  State<NewPetView> createState() => _NewPetViewState();
}

class _NewPetViewState extends State<NewPetView> {

  DatabasePet? _pet;
  late final PetsService _petsService;
  late final TextEditingController _nomeController;
  late final TextEditingController _tipoController;
  late final TextEditingController _racaController;
  late final TextEditingController _dataNascimentoController;
  late final TextEditingController _sexoController;
  late final TextEditingController _pesoController;

  @override void initState() {
    _petsService = PetsService();
    _nomeController = TextEditingController();
    _tipoController = TextEditingController();
    _racaController = TextEditingController();
    _dataNascimentoController = TextEditingController();
    _sexoController = TextEditingController();
    _pesoController = TextEditingController();
    super.initState();
  }

  void _textControllerListener() async {
    final pet = _pet;
    if (pet == null) {
      return;
    }
    final nome = _nomeController.text;
    final tipo = _tipoController.text;
    final raca = _racaController.text;
    final dataNascimento = _dataNascimentoController.text;
    final sexo = _sexoController.text;
    final peso = int.parse(_pesoController.text);
    await _petsService.updatePet(pet: pet, nome: nome, tipo: tipo, raca: raca, dataNascimento: dataNascimento, sexo: sexo, peso: peso,);
  }

  void _setupTextControllerListener() async {
    _nomeController.removeListener(_textControllerListener);
    _nomeController.removeListener(_textControllerListener);
  }

  Future<DatabasePet> createNewPet() async {
    final existingPet = _pet;
    if (existingPet != null) {
      return existingPet;
    }
    final currentUser = AuthService.firebase().currentUser!;
    final email = currentUser.email!;
    final owner = await _petsService.getUser(email: email);
    return await _petsService.createPet(owner: owner);
  }

  void _deletePetIfNomeIsEmpty() {
    final pet = _pet;
    if (_nomeController.text.isEmpty && pet != null) {
      _petsService.deletePet(id: pet.id);
    }
  }

  void _savePetIfNomeNotEmpty() async {
    final pet = _pet;
    final nome = _nomeController.text;
    final tipo = _tipoController.text;
    final raca = _racaController.text;
    final dataNascimento = _dataNascimentoController.text;
    final sexo = _sexoController.text;
    final peso = int.parse(_pesoController.text);
    if (pet != null && nome.isNotEmpty) {
      await _petsService.updatePet(pet: pet, nome: nome, tipo: tipo, raca: raca, dataNascimento: dataNascimento, sexo: sexo, peso: peso,);
    }
  }

  @override
  void dispose() {
    _deletePetIfNomeIsEmpty();
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
        title: const Text("Adicionar Pet"),
      ),
      body: FutureBuilder(
        future: createNewPet(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              _pet = snapshot.data as DatabasePet?;
              _setupTextControllerListener();
              return SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 100 * 0.2, 20, 0),
                  child: Column(
                    children: [
                      reusableTextField("Nome", false, _nomeController),
                    ],
                  ),
                ),
              );
            default:
              return const CircularProgressIndicator();
          }
        },
      )
    );
  }
}
