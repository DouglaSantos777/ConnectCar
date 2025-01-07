import 'package:drift/drift.dart';
import 'package:connectcar/data/tables/cars.dart';
import 'package:connectcar/data/database/database.dart';

part 'car_dao.g.dart';

@DriftAccessor(
  tables: [Cars],
  queries: {

  },
)
class CarDao extends DatabaseAccessor<Database> with _$CarDaoMixin {
  final Database db;

  CarDao(this.db) : super(db);

 Future insertCar(Insertable<Car> car) => into(cars).insert(car);

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

  Future<bool> updateCar(CarsCompanion entity) async {
    return await update(cars).replace(entity);
  }

  Future<int> deleteCar(int id) async {
    return await (delete(cars)..where((tbl) => tbl.id.equals(id))).go();
  }
}

class CarDetails {
  final Car car;

  CarDetails({
    required this.car,
  });

}
