/*import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'db_tables.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

part 'app_database.g.dart';

/*
@DriftDatabase(tables: [Cliente]) 
class AppDatabase extends _$AppDatabase {
  AppDatabase(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 1;

  static Future<AppDatabase> open() async {
    final appDocDirectory = await getApplicationDocumentsDirectory();
    final dbPath = '${appDocDirectory.path}/app.db'; 
    final dbFile = File(dbPath);
    final executor = NativeDatabase(dbFile); 
    return AppDatabase(executor); 
  }
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
    return (select(cliente)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }
}
*/