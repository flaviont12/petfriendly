import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' show join;
import 'package:petfriendly/services/crud/crud_exceptions.dart';

class PetsService {
  Database? _db;

  Future<DatabasePet> updatePet({
    required DatabasePet pet,
    required String nome,
    required String tipo,
    required String raca,
    required String dataNascimento,
    required String sexo,
    required int peso,
  }) async {
    final db = _getDatabaseOrThrow();

    await getPet(id: pet.id);

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
      return await getPet(id: pet.id);
    }
  }

  Future<Iterable<DatabasePet>> getAllPets() async {
    final db = _getDatabaseOrThrow();
    final pets = await db.query(petTable);

    return pets.map((petRow) => DatabasePet.fromRow(petRow));
  }

  Future<DatabasePet> getPet({required int id}) async {
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
      return DatabasePet.fromRow(pets.first);
    }
  }

  Future<int> deleteAllPets() async {
    final db = _getDatabaseOrThrow();
    return await db.delete(petTable);
  }

  Future<void> deletePet({required int id}) async {
    final db = _getDatabaseOrThrow();
    final deletedCount = await db.delete(
      petTable,
      where: 'id = ?',
      whereArgs: [id],
    );
    if (deletedCount == 0) {
      throw CouldNotDeletePet();
    }
  }

  Future<DatabasePet> createPet({required DatabaseUser owner}) async {
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

    return pet;
  }

  Future<DatabaseUser> getUser({required String email}) async {
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

      // create pet table
      await db.execute(createPetTable);
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
const petTable = "pet";
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

const createPetTable = '''CREATE TABLE IF NOT EXISTS "pet" (
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
