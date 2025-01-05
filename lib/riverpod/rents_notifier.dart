import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:connectcar/data/database/database.dart';

class RentsNotifier extends StateNotifier<List<Rent>> {
  RentsNotifier() : super([]);

  Future<void> carregarRents() async {
    final db = await Database.open();
    state = await db.getAllRents();
  }

  Future<void> adicionarRent({
  required int clienteId,
  required int carId,
  required DateTime rentDate,
  required DateTime returnDate,
}) async {
  final db = await Database.open();

  // Verificar se o carro está disponível
  final isAvailable = await db.isCarAvailable(carId, rentDate, returnDate);
  if (!isAvailable) {
    throw Exception('Carro já alugado no período informado.');
  }

  // Obter o preço do carro e calcular o valor
  final car = await (db.select(db.cars)..where((tbl) => tbl.id.equals(carId))).getSingle();
  final rentDuration = returnDate.difference(rentDate).inDays;
  final totalValue = car.priceByDay * rentDuration;

  // Registrar o aluguel
  final rentCompanion = RentsCompanion(
    clienteId: Value(clienteId),
    carId: Value(carId),
    rentDate: Value(rentDate),
    returnDate: Value(returnDate),
    totalValue: Value(totalValue),
  );

  // Inserir o aluguel no banco de dados
  final rentId = await db.into(db.rents).insert(rentCompanion);

  // Buscar o aluguel recém inserido
  final rent = await (db.select(db.rents)..where((tbl) => tbl.id.equals(rentId))).getSingle();

  // Atualizar o estado local com o novo aluguel
  state = [...state, rent];
}

}

final rentsProvider = StateNotifierProvider<RentsNotifier, List<Rent>>((ref) {
  final notifier = RentsNotifier();
  notifier.carregarRents();
  return notifier;
});
