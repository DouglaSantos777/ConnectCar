import 'package:drift/drift.dart';
import 'package:connectcar/data/tables/cars.dart';
import 'package:connectcar/data/tables/categories.dart';

import 'package:connectcar/data/database/database.dart';

part 'car_dao.g.dart';

@DriftAccessor(tables: [Cars, Categories], queries: {})
class CarDao extends DatabaseAccessor<Database> with _$CarDaoMixin {
  final Database db;

  CarDao(this.db) : super(db);

  Future insertCar(Insertable<Car> car) => into(cars).insert(car);

  Future<Car?> getById(int id) {
    return (select(cars)
          ..where(
            (row) => row.id.equals(id),
          ))
        .getSingleOrNull();
  }

  Future<List<Car>> getAllCars() => select(cars).get();
}

class CarCategory {
  final Car car;
  final Category category;

  CarCategory({
    required this.car,
    required this.category,
  });
}