import 'package:drift/drift.dart';
import 'package:connectcar/data/tables/status.dart'; 
import 'package:connectcar/data/database/database.dart'; 

part 'status_dao.g.dart'; 

@DriftAccessor(tables: [Status]) 
class StatusDao extends DatabaseAccessor<Database> with _$StatusDaoMixin {
  final Database db;

  StatusDao(this.db) : super(db);

  Stream<List<StatusData>> watchStatus() => select(status).watch();

  Future<int> insertStatus(Insertable<StatusData> statusData) =>
      into(status).insert(statusData);

  Future<List<StatusData>> getAllStatus() => select(status).get();

  Future<StatusData?> getStatusByName(String name) {
    return (select(status)..where((tbl) => tbl.nome.equals(name))).getSingle();
  }

//usase o Companion pois nao preciso colocar tds os dados apenas os que acho necessário atualizar
  Future<bool> updateCar(StatusCompanion entity) async {
    return await update(status).replace(entity);
  }

  Future<int> deleteStatus(String name) async {
    return await (delete(status)..where((tbl) => tbl.nome.equals(name))).go();
  }
}
