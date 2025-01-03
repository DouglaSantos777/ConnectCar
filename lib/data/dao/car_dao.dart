import 'package:drift/drift.dart';
import 'package:connectcar/data/tables/cars.dart';
import 'package:connectcar/data/tables/categories.dart';
import 'package:connectcar/data/tables/status.dart';
import 'package:connectcar/data/database/database.dart';

part 'car_dao.g.dart';

@DriftAccessor(
  tables: [Cars, Categories],
  queries: {
    'carrosComStatusEcategoria': 'SELECT * FROM cars LEFT JOIN categories ON cars.category = categories.nome LEFT JOIN status ON cars.status = status.nome'
  },
)
class CarDao extends DatabaseAccessor<Database> with _$CarDaoMixin {
  final Database db;

  CarDao(this.db) : super(db);

  Future insertCar(Insertable<Car> car) => into(cars).insert(car);

  /* Future<int> insertCar(CarsCompanion entity) async {
    return await into(cars).insert(entity);
  } */

  Future<Car?> getCar(int id) {
    return (select(cars)
          ..where(
            (tbl) => tbl.id.equals(id),
          ))
        .getSingle();
  }

  Future<List<Car>> getAllCars() async {
    return await select(cars).get();
  }

  // Uso do Companion pois nao é necessário colocar tds os dados apenas os que acho necessário atualizar
  Future<bool> updateCar(CarsCompanion entity) async {
    return await update(cars).replace(entity);
  }

  Future<int> deleteCar(int id) async {
    return await (delete(cars)..where((tbl) => tbl.id.equals(id))).go();
  }
}

class CarDetails {
  final Car car;
  final Category category;
  final Status status;

  CarDetails({
    required this.car,
    required this.category,
    required this.status,
  });
}
