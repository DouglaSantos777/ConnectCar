import 'package:connectcar/data/database/database.dart';
import 'package:connectcar/models/db_tables.dart';
import 'package:drift/drift.dart';

class Rents extends Table with AutoIncrementingPrimaryKey{
IntColumn get clienteId => integer().references(Cliente, #id)();
IntColumn get carId => integer().references(Car, #id)();
DateTimeColumn get rentAt  => dateTime()();
DateTimeColumn get returnAt => dateTime()();
RealColumn get totalValue => real()();

}