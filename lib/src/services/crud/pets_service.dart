import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:petfriendly/src/services/crud/crud_exceptions.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' show join;

class PetsService {
  Database? _db;

  List<DatabasePet> _pets = [];

  static final PetsService _shared = PetsService._sharedInstance();
  PetsService._sharedInstance() {
    _petsStreamController = StreamController<List<DatabasePet>>.broadcast(
      onListen: () {
        _petsStreamController.sink.add(_pets);
      },
    );
  }
  factory PetsService() => _shared;

  late final StreamController<List<DatabasePet>> _petsStreamController;

  Stream<List<DatabasePet>> get allPets => _petsStreamController.stream;

  Future<DatabaseUser> getOrCreateUser({required String email}) async {
    try {
      final user = await getUser(email: email);
      return user;
    } on CouldNotFindUser {
      final createdUser = await createUser(email: email);
      return createdUser;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _cachePets() async {
    final allPets = await getAllPets();
    _pets = allPets.toList();
    _petsStreamController.add(_pets);
  }

  Future<DatabasePet> updatePet({
    required DatabasePet pet,
    required String nome,
    required String tipo,
    required String raca,
    required String dataNascimento,
    required String sexo,
    required int peso,
  }) async {
    await _ensureDbIsOpen();
    final db = _getDatabaseOrThrow();

    // certifica que o create_pet existe
    await getPet(id: pet.id);

    // update DB
    final updatesCount = await db.update(petTable, {
      nomeColumn: nome,
      tipoColumn: tipo,
      racaColumn: raca,
      dataNascimentoColumn: dataNascimento,
      sexoColumn: sexo,
      pesoColumn: peso,
    });

    if (updatesCount == 0) {
      throw CouldNotUpdatePet();
    } else {
      final updatedPet = await getPet(id: pet.id);
      _pets.removeWhere((pet) => pet.id == updatedPet.id);
      _pets.add(updatedPet);
      _petsStreamController.add(_pets);
      return updatedPet;
    }
  }

  Future<Iterable<DatabasePet>> getAllPets() async {
    await _ensureDbIsOpen();
    final db = _getDatabaseOrThrow();
    final pets = await db.query(petTable);

    return pets.map((petRow) => DatabasePet.fromRow(petRow));
  }

  Future<DatabasePet> getPet({required int id}) async {
    await _ensureDbIsOpen();
    final db = _getDatabaseOrThrow();
    final pets = await db.query(
      petTable,
      limit: 1,
      where: 'id = ?',
      whereArgs: [id],
    );
    if (pets.isEmpty) {
      throw CouldNotFindPet();
    } else {
      final pet = DatabasePet.fromRow(pets.first);
      _pets.removeWhere((pet) => pet.id == id);
      _pets.add(pet);
      _petsStreamController.add(_pets);
      return pet;
    }
  }

  Future<int> deleteAllPets() async {
    await _ensureDbIsOpen();
    final db = _getDatabaseOrThrow();
    final numberOfDeletions = await db.delete(petTable);
    _pets = [];
    _petsStreamController.add(_pets);
    return numberOfDeletions;
  }

  Future<void> deletePet({required int id}) async {
    await _ensureDbIsOpen();
    final db = _getDatabaseOrThrow();
    final deletedCount = await db.delete(
      petTable,
      where: 'id = ?',
      whereArgs: [id],
    );
    if (deletedCount == 0) {
      throw CouldNotDeletePet();
    } else {
      _pets.removeWhere((pet) => pet.id == id);
      _petsStreamController.add(_pets);
    }
  }

  Future<DatabasePet> createPet({required DatabaseUser owner}) async {
    await _ensureDbIsOpen();
    final db = _getDatabaseOrThrow();

    // certifica que o dono existe no banco com o id correto
    final dbUser = await getUser(email: owner.email);
    if (dbUser != owner) {
      throw CouldNotFindUser();
    }

    const nome = "";
    const tipo = "";
    const raca = "";
    const dataNascimento = "";
    const sexo = "";
    const peso = null;
    // cria Pet
    final petId = await db.insert(petTable, {
      userIdColumn: owner.id,
      nomeColumn: nome,
      tipoColumn: tipo,
      racaColumn: raca,
      dataNascimentoColumn: dataNascimento,
      sexoColumn: sexo,
      pesoColumn: peso,
    });

    final pet = DatabasePet(
      id: petId,
      userId: owner.id,
      nome: nome,
      tipo: tipo,
      raca: raca,
      dataNascimento: dataNascimento,
      sexo: sexo,
      peso: peso,
    );

    _pets.add(pet);
    _petsStreamController.add(_pets);

    return pet;
  }

  Future<DatabaseUser> getUser({required String email}) async {
    await _ensureDbIsOpen();
    final db = _getDatabaseOrThrow();

    final results = await db.query(
      userTable,
      limit: 1,
      where: 'email = ?',
      whereArgs: [email.toLowerCase()],
    );
    if (results.isEmpty) {
      throw CouldNotFindUser();
    } else {
      return DatabaseUser.fromRow(results.first);
    }
  }

  Future<DatabaseUser> createUser({required String email}) async {
    await _ensureDbIsOpen();
    final db = _getDatabaseOrThrow();
    final results = await db.query(
      userTable,
      limit: 1,
      where: 'email = ?',
      whereArgs: [email.toLowerCase()],
    );
    if (results.isNotEmpty) {
      throw UserAlreadyExists();
    }

    final userId = await db.insert(userTable, {
      emailColumn: email.toLowerCase(),
    });

    return DatabaseUser(
      id: userId,
      email: email,
    );
  }

  Future<void> deleteUser({required String email}) async {
    await _ensureDbIsOpen();
    final db = _getDatabaseOrThrow();
    final deletedCount = await db.delete(
      userTable,
      where: 'email = ?',
      whereArgs: [email.toLowerCase()],
    );
    if (deletedCount != 1) {
      throw CouldNotDeleteUser();
    }
  }

  Database _getDatabaseOrThrow() {
    final db = _db;
    if (db == null) {
      throw DatabaseIsNotOpen();
    } else {
      return db;
    }
  }

  Future<void> close() async {
    final db = _db;
    if (db == null) {
      throw DatabaseIsNotOpen();
    } else {
      await db.close();
      _db = null;
    }
  }

  Future<void> _ensureDbIsOpen() async {
    try {
      await open();
    } on DatabaseAlreadyOpenException {
      // vazio
    }
  }

  Future<void> open() async {
    if (_db != null) {
      throw DatabaseAlreadyOpenException();
    }
    try {
      final docsPath = await getApplicationDocumentsDirectory();
      final dbPath = join(docsPath.path, dbName);
      final db = await openDatabase(dbPath);
      _db = db;

      // create user table
      await db.execute(createUserTable);

      // create create_pet table
      await db.execute(createPetTable);
      await _cachePets();
    } on MissingPlatformDirectoryException {
      throw UnableToGetDocumentDirectory();
    }
  }
}

@immutable
class DatabaseUser {
  final int id;
  final String email;

  const DatabaseUser({
    required this.id,
    required this.email,
  });

  DatabaseUser.fromRow(Map<String, Object?> map)
      : id = map[idColumn] as int,
        email = map[emailColumn] as String;

  @override
  String toString() => 'Person, ID = $id, email = $email';

  @override
  bool operator ==(covariant DatabaseUser other) => id == other.id;

  @override
  int get hashCode => id.hashCode;
}

class DatabasePet {
  final int id;
  final int userId;
  final String nome;
  final String tipo;
  final String raca;
  final String dataNascimento;
  final String sexo;
  final int peso;

  DatabasePet({
    required this.id,
    required this.userId,
    required this.nome,
    required this.tipo,
    required this.raca,
    required this.dataNascimento,
    required this.sexo,
    required this.peso,
  });

  DatabasePet.fromRow(Map<String, Object?> map)
      : id = map[idColumn] as int,
        userId = map[userIdColumn] as int,
        nome = map[nomeColumn] as String,
        tipo = map[tipoColumn] as String,
        raca = map[racaColumn] as String,
        dataNascimento = map[dataNascimentoColumn] as String,
        sexo = map[sexoColumn] as String,
        peso = map[pesoColumn] as int;

  @override
  String toString() => "Pet, ID = $id, userId = $userId";

  @override
  bool operator ==(covariant DatabasePet other) => id == other.id;

  @override
  int get hashCode => id.hashCode;
}

const dbName = "pets.db";
const petTable = "create_pet";
const userTable = "user";
const idColumn = "id";
const emailColumn = "email";
const userIdColumn = "user_id";
const nomeColumn = "nome";
const tipoColumn = "tipo";
const racaColumn = "raca";
const dataNascimentoColumn = "data_nascimento";
const sexoColumn = "sexo";
const pesoColumn = "peso";

const createUserTable = '''CREATE TABLE IF NOT EXISTS "user" (
        "id"	INTEGER NOT NULL,
        "email"	TEXT NOT NULL UNIQUE,
        PRIMARY KEY("id" AUTOINCREMENT)
      );''';

const createPetTable = '''CREATE TABLE IF NOT EXISTS "create_pet" (
        "id"	INTEGER NOT NULL,
        "user_id"	INTEGER NOT NULL,
        "nome"	TEXT NOT NULL,
        "tipo"	TEXT,
        "raca"	TEXT,
        "data_nascimento"	TEXT,
        "sexo"	TEXT,
        "peso"	INTEGER,
        FOREIGN KEY("user_id") REFERENCES "user"("id"),
        PRIMARY KEY("id" AUTOINCREMENT)
      );''';
