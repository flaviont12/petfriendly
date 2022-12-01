import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:petfriendly/src/core/constants/routes.dart';
import 'package:petfriendly/src/presentation/widgets/navigation_drawer_widget.dart';
import 'package:petfriendly/src/services/auth/auth_service.dart';
import 'package:petfriendly/src/services/crud/pets_service.dart';


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
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/pets/new-create_pet');
              },
              icon: Icon(
                Icons.add,
                color: Color(0xFF07A5A8),
              )),
        ],
      ),
      body: StreamBuilder(
        stream: _petsService.allPets,
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
            case ConnectionState.active:
              if (snapshot.hasData) {
                final allPets = snapshot.data as List<DatabasePet>;

                return ListView.builder(
                  itemCount: allPets.length,
                  itemBuilder: (context, index) {
                    log(allPets.length.toString());
                    final pet = allPets[index];
                    return ListTile(
                      title: Container(
                          color: const Color(0xFF07A5A8), child: Text(pet.nome)),
                    );
                  },
                );
              } else {
                return CircularProgressIndicator();
              }
            default:
              return const CircularProgressIndicator();
          }
        },
      ),
      drawer: NavigationDrawerWidget(),
    );
  }
}
