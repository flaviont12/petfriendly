import 'package:flutter/material.dart';
import 'package:petfriendly/models/pet.dart';
import 'package:petfriendly/widgets/navigation_drawer_widget.dart';

class MyPets extends StatefulWidget {
  late final Animal animal;


  @override
  State<MyPets> createState() => _MyPetsState();
}

class _MyPetsState extends State<MyPets> {
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
      body: Column(
        children: [
          GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            childAspectRatio: 1.0
          ),
            itemCount: animal.length, itemBuilder: (BuildContext context, int index) {

            },
          ),
        ],
      ),
      drawer: NavigationDrawerWidget(),
    );
  }
}
