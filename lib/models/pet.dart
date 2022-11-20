import 'package:flutter/material.dart';

class Animal {
  final String imageAnimal,
      nomeAnimal,
      tipoAnimal,
      racaAnimal,
      dataNascimentoAnimal,
      sexoAnimal;
  final double pesoAnimal;
  final int id;

  Animal(
    this.id,
    this.imageAnimal,
    this.nomeAnimal,
    this.tipoAnimal,
    this.racaAnimal,
    this.dataNascimentoAnimal,
    this.pesoAnimal,
    this.sexoAnimal,
  );
}

List<Animal> animal = [
  Animal(1, 'assets/images/dog1.jpg', 'Cleytin', 'Canina', 'Golden Retriever',
      '12/09/2021', 6.40, 'Masculino'),
  Animal(2, 'assets/images/dog2.jpg', 'Cleytin', 'Canina', 'Golden Retriever',
      '12/09/2021', 6.40, 'Masculino'),
  Animal(3, 'assets/images/dog3.jpg', 'Cleytin', 'Canina', 'Golden Retriever',
      '12/09/2021', 6.40, 'Masculino'),
  Animal(4, 'assets/images/dog4.jpg', 'Cleytin', 'Canina', 'Golden Retriever',
      '12/09/2021', 6.40, 'Masculino'),
];
