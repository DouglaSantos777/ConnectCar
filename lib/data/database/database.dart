import 'dart:io';
import 'package:drift/drift.dart';
import 'package:connectcar/data/tables/cars.dart';
import 'package:connectcar/data/dao/car_dao.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:connectcar/data/tables/clientes.dart';
import 'package:connectcar/data/tables/rents.dart';
import 'package:connectcar/data/tables/payments.dart';
import 'package:path/path.dart' as path;

part 'database.g.dart';

@DriftDatabase(
  tables: [Cars, Cliente, Rents, Payments],
  daos: [CarDao],
)
class Database extends _$Database {
  Database(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 3;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onUpgrade: (migrator, from, to) async {
          if (from == 1 && to >= 2) {
            await migrator.createTable(rents);
          }
          if (from <= 2 && to >= 3) {
            await migrator.createTable(payments);
          }
        },
        beforeOpen: (details) async {
          await customStatement('PRAGMA foreign_keys = ON');
        },
      );

  static Future<Database> open() async {
    final appDocDirectory = await getApplicationDocumentsDirectory();
    final dbPath = '${appDocDirectory.path}/rents.db';
    final dbFile = File(dbPath);
    final executor = NativeDatabase(dbFile);
    return Database(executor);
  }

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

  Future<void> registerRent(
      int clienteId, int carId, DateTime rentDate, DateTime returnDate) async {
    final isAvailable = await isCarAvailable(carId, rentDate, returnDate);
    if (!isAvailable) {
      throw Exception('Carro já alugado no período informado.');
    }

    // Obter o preço do carro
    final car =
        await (select(cars)..where((tbl) => tbl.id.equals(carId))).getSingle();

    // Calcular o valor do aluguel
    final rentDuration = returnDate.difference(rentDate).inDays;
    final totalValue = car.priceByDay * rentDuration;

    // Registrar o aluguel
    final rentCompanion = RentsCompanion(
      clienteId: Value(clienteId),
      carId: Value(carId),
      rentDate: Value(rentDate),
      returnDate: Value(returnDate),
      totalValue: Value(totalValue),
    );

    await into(rents).insert(rentCompanion);
  }

  // Verificar se o carro está disponível para o período solicitado
  Future<bool> isCarAvailable(
      int carId, DateTime rentDate, DateTime returnDate) async {
    final rentedCars = await (select(rents)
          ..where((tbl) => tbl.carId.equals(carId))
          ..where((tbl) => tbl.returnDate.isBiggerThanValue(rentDate))
          ..where((tbl) => tbl.rentDate.isSmallerThanValue(returnDate)))
        .get();

    return rentedCars
        .isEmpty; // Se não houver registros de aluguel sobrepondo, o carro está disponível
  }

  // Obter todos os aluguéis
  Future<List<Rent>> getAllRents() async {
    return await select(rents).get();
  }

  Future<Car?> getCarById(int carId) async {
    return (select(cars)..where((tbl) => tbl.id.equals(carId)))
        .getSingleOrNull();
  }
}

/*
LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'db.sqlite'));

    return NativeDatabase(file);
  });
}
*/