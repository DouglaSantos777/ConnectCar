import 'package:drift/drift.dart';
import 'package:connectcar/data/tables/cars.dart';
import 'package:connectcar/data/tables/categories.dart';

import 'package:connectcar/data/database/database.dart';

part 'car_dao.g.dart';

@DriftAccessor(tables: [Cars, Categories], queries: {})
class CarDao extends DatabaseAccessor<Database> with _$CarDaoMixin {
  final Database db;

  CarDao(this.db) : super(db);

  Future<Car> getById(int id) {
    return (select(cars)
          ..where(
            (row) => row.id.equals(id),
          ))
        .getSingle();
  }

  Future<List<Car>> getAllCars() => select(cars).get();
}
