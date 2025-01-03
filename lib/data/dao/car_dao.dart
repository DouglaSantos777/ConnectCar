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

  Stream<List<CarDetails>> observeCarsWithStatusAndCategory() {
  var orderedSelect = select(cars)
    ..orderBy([
      // Ordering by car name or another field
      (t) => OrderingTerm(expression: t.name), // Ajuste o nome da coluna conforme seu banco de dados
    ]);

  return orderedSelect
    .join([
      // Left outer join with the Categories table
      leftOuterJoin(
        categories,
        categories.name.equalsExp(cars.category), // Verifique se a coluna é 'name' em 'categories'
      ),
      // Left outer join with the Status table
      leftOuterJoin(
        status,
        status.name.equalsExp(cars.status), // Verifique se a coluna é 'name' em 'status'
      ),
    ])
    .watch()
    .map((rows) {
      return rows.map((row) {
        return CarDetails(
          car: row.readTable(cars), // Lê os dados do carro
          category: row.readTableOrNull(categories)!, // Lê os dados da categoria (use `OrNull` se a coluna for opcional)
          status: row.readTableOrNull(status)!, // Lê os dados do status (use `OrNull` se a coluna for opcional)
        );
      }).toList();
    });
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
