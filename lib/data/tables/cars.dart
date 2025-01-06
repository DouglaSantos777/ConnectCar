import 'package:drift/drift.dart';

class Cars extends Table{
IntColumn get id => integer().autoIncrement()();
IntColumn get renavam => integer()();
TextColumn get plate => text().withLength(max: 20)();
TextColumn get brand => text().withLength(max: 50)();
TextColumn get model => text().withLength(max: 50)();
IntColumn get year => integer()();
RealColumn get priceByDay => real()();
TextColumn get photo => text()();
TextColumn get description => text().withDefault(const Constant(""))();
TextColumn get category => text().withLength(max: 20)();
TextColumn get status => text().withDefault(const Constant("Disponível"))();
DateTimeColumn get createdAt => dateTime()();
}