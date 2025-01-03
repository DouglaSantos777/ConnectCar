import 'package:drift/drift.dart';

class Car extends Table with AutoIncrementingPrimaryKey{
IntColumn get renavam => integer()();
TextColumn get plate => text().withLength(max: 20)();
TextColumn get brand => text().withLength(max: 50)();
TextColumn get model => text().withLength(max: 50)();
IntColumn get year => integer()();

IntColumn get category => integer()
.references(CarCategory, #id)();

IntColumn get status => integer()
.references(CarStatus, #id)();

RealColumn get priceByDay => real()();
TextColumn get photo => text()();
TextColumn get description => text().withDefault(const Constant(""))();

DateTimeColumn get createdAt => dateTime()();
}

class CarCategory extends Table with AutoIncrementingPrimaryKey{
  TextColumn get category => text().withLength(max: 50)();
}

class CarStatus extends Table with AutoIncrementingPrimaryKey{
 TextColumn get status => text().withLength(max: 50)();

}

mixin AutoIncrementingPrimaryKey on Table {
  IntColumn get id => integer().autoIncrement()();
}