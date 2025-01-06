import 'package:drift/drift.dart';
import 'package:connectcar/data/tables/rents.dart';

class Payments extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get rentId => integer().references(Rents, #id)();
  RealColumn get value => real()();
  DateTimeColumn get paymentDate => dateTime()();
  TextColumn get status => text().nullable()();
}
