import 'package:connectcar/data/tables/clientes.dart';
import 'package:connectcar/data/tables/cars.dart';
import 'package:drift/drift.dart';

class Rents extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get clienteId => integer().references(Cliente, #id)();
  IntColumn get carId => integer().references(Cars, #id)();
  DateTimeColumn get rentDate => dateTime()();
  DateTimeColumn get returnDate => dateTime()();
  RealColumn get totalValue => real()();
}
