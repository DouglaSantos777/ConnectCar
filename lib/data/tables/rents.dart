import 'package:connectcar/data/tables/clientes.dart';
import 'package:connectcar/data/tables/cars.dart';
import 'package:drift/drift.dart';
import 'package:connectcar/data/tables/auto_primary_key.dart';

class Rents extends Table with AutoIncrementingPrimaryKey{
IntColumn get clienteId => integer().references(Cliente, #id)();
IntColumn get carId => integer().references(Cars, #id)();
DateTimeColumn get rentAt  => dateTime()();
DateTimeColumn get returnAt => dateTime()();
RealColumn get totalValue => real()();

}