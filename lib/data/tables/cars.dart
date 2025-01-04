import 'package:connectcar/data/tables/auto_primary_key.dart';
import 'package:connectcar/data/tables/categories.dart';
import 'package:connectcar/data/tables/status.dart';
import 'package:drift/drift.dart';

class Cars extends Table with AutoIncrementingPrimaryKey{
IntColumn get renavam => integer()();
TextColumn get plate => text().withLength(max: 20)();
TextColumn get brand => text().withLength(max: 50)();
TextColumn get model => text().withLength(max: 50)();
IntColumn get year => integer()();
RealColumn get priceByDay => real()();
TextColumn get photo => text()();
TextColumn get description => text().withDefault(const Constant(""))();
DateTimeColumn get createdAt => dateTime()();

TextColumn get category => 
text().references(Categories, #nome)();

TextColumn get status => 
text().references(Status, #nome)();
}