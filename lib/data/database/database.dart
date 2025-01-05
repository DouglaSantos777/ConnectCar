import 'dart:io';
import 'package:drift/drift.dart';
import 'package:connectcar/data/tables/cars.dart';
import 'package:connectcar/data/dao/car_dao.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:connectcar/data/tables/clientes.dart';
import 'package:path/path.dart' as path;

part 'database.g.dart';

/*
LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'db.sqlite'));

    return NativeDatabase(file);
  });
}
*/
@DriftDatabase(
  tables: [Cars, Cliente],
  daos: [CarDao],
)
class Database extends _$Database {
   Database(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 1;

   static Future<Database> open() async {
    final appDocDirectory = await getApplicationDocumentsDirectory();
    final dbPath = '${appDocDirectory.path}/rent.db'; 
    final dbFile = File(dbPath);    
    final executor = NativeDatabase(dbFile); 
    return Database(executor);  
  }


  /*@override
  MigrationStrategy get migration => MigrationStrategy(
        onUpgrade: (migrator, from, to) async {
          if (from == 1) {
  
          }
        },
        beforeOpen: (details) async {
          await customStatement('PRAGMA foreign_keys = ON');
        },
      );
*/

  Future<void> addCliente({
    required String nome,
    required String cpf,
    required String cnh,
    required String enderecoRua,
    required String enderecoNumero,
    required String enderecoBairro,
    required String enderecoCidade,
    required String enderecoEstado,
    required String enderecoCep,
    required String telefone,
    required String email,
  }) async {
    final clienteCompanion = ClienteCompanion(
      nome: Value(nome),
      cpf: Value(cpf),
      cnh: Value(cnh),
      enderecoRua: Value(enderecoRua),
      enderecoNumero: Value(enderecoNumero),
      enderecoBairro: Value(enderecoBairro),
      enderecoCidade: Value(enderecoCidade),
      enderecoEstado: Value(enderecoEstado),
      enderecoCep: Value(enderecoCep),
      telefone: Value(telefone),
      email: Value(email),
    );

    await into(cliente).insert(clienteCompanion);
  }

  Future<List<ClienteData>> getAllClientes() async {
    return await select(cliente).get();
  }

  Future<ClienteData?> getClienteById(int id) async {
    return (select(cliente)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }
}
