import 'package:flutter/material.dart';
import 'package:petfriendly/models/pet.dart';
import 'package:petfriendly/services/auth/auth_service.dart';
import 'package:petfriendly/services/crud/pets_service.dart';
import 'package:petfriendly/widgets/navigation_drawer_widget.dart';

class MyPets extends StatefulWidget {
  @override
  State<MyPets> createState() => _MyPetsState();
}

class _MyPetsState extends State<MyPets> {
  late final PetsService _petsService;

  String get userEmail => AuthService.firebase().currentUser!.email!;

  @override
  void initState() {
    _petsService = PetsService();
    super.initState();
  }

  @override
  void dispose() {
    _petsService.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Color(0xFF07A5A8)),
          centerTitle: true,
          backgroundColor: Colors.white,
          shadowColor: Color(0xFF07A5A8),
          title: Image.asset(
            'assets/images/Logo - Petfriendly.png',
            fit: BoxFit.cover,
            height: 100,
          )),
      body: FutureBuilder(
        future: _petsService.getOrCreateUser(email: userEmail),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              return StreamBuilder(
                stream: _petsService.allPets,
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                      return const Text("Aguardando por todos os pets...");
                    default:
                      return const CircularProgressIndicator();
                  }
                },
              );
            default:
              return const CircularProgressIndicator();
          }
        },
      ),
      drawer: NavigationDrawerWidget(),
    );
  }
}
