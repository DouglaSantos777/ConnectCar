import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:connectcar/data/database/database.dart';
import 'package:connectcar/data/dao/payment_dao.dart';

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

Future<void> registrarPagamento({
    required int rentId,
    required double value,
    required DateTime paymentDate,
    String? status,
  }) async {
    final db = await Database.open();

    final paymentDao = PaymentDao(db);
    await paymentDao.addPayment(
      rentId: rentId,
      value: value,
      paymentDate: paymentDate,
      status: status,
    );

    // Caso você queira atualizar pagamentos ou realizar ações específicas:
    // final pagamentos = await paymentDao.getPaymentsByRent(rentId);
    // Atualizar ou realizar alguma ação com pagamentos.
  }

 // Método para obter o nome do cliente
  Future<String?> getClienteNome(int clienteId) async {
    final db = await Database.open();
    final cliente = await (db.select(db.cliente)..where((tbl) => tbl.id.equals(clienteId))).getSingleOrNull();
    return cliente?.nome;
  }

  // Método para obter a categoria do carro
  Future<String?> getCarroCategoria(int carId) async {
    final db = await Database.open();
    final car = await (db.select(db.cars)..where((tbl) => tbl.id.equals(carId))).getSingleOrNull();
    return car?.category;
  }

   Future<String?> getCarroStatus(int carId) async {
    final db = await Database.open();
    final car = await (db.select(db.cars)..where((tbl) => tbl.id.equals(carId))).getSingleOrNull();
    return car?.status;
  }


  // Método para obter o modelo do carro
  Future<String?> getCarroModelo(int carId) async {
    final db = await Database.open();
    final car = await (db.select(db.cars)..where((tbl) => tbl.id.equals(carId))).getSingleOrNull();
    return car?.model;
  }

  Future<String?> getCarroPlaca(int carId) async {
    final db = await Database.open();
    final car = await (db.select(db.cars)..where((tbl) => tbl.id.equals(carId))).getSingleOrNull();
    return car?.plate;
  }

  Future<double?> getCarroById(int carId) async {
    final db = await Database.open();
    final car = await (db.select(db.cars)..where((tbl) => tbl.id.equals(carId))).getSingleOrNull();
    return car?.priceByDay;
  }

  Future<List<Car>> getAllCarsByStatus(String status) async {
    final db = await Database.open();
    final cars = await (db.select(db.cars)..where((tbl) => tbl.status.equals(status))).get();
    return cars;
  }

Future<List<Map<String, dynamic>>> getCarrosMaisAlugados() async {
  final db = await Database.open();

  // Query SQL para agrupar os aluguéis e contar a quantidade de vezes alugado
  final query = await db.customSelect(
    '''
    SELECT car_id AS carId, COUNT(car_id) AS totalAlugado
    FROM rents
    GROUP BY car_id
    ORDER BY totalAlugado DESC
    '''
  ).get();

  // Mapear os resultados para uma lista de mapas
  return query.map((row) {
    return {
      'carId': row.data['carId'] as int,
      'totalAlugado': row.data['totalAlugado'] as int,
    };
  }).toList();
}

}

// Providers para acessar nome do cliente e categoria do carro
final clienteNomeProvider = FutureProvider.family<String?, int>((ref, clienteId) async {
  final rentsNotifier = ref.watch(rentsProvider.notifier);
  return await rentsNotifier.getClienteNome(clienteId);
});

final carroCategoriaProvider = FutureProvider.family<String?, int>((ref, carId) async {
  final rentsNotifier = ref.watch(rentsProvider.notifier);
  return await rentsNotifier.getCarroCategoria(carId);
});

final carroModeloProvider = FutureProvider.family<String?, int>((ref, carId) async {
  final rentsNotifier = ref.watch(rentsProvider.notifier);
  return await rentsNotifier.getCarroModelo(carId);
});

final rentsProvider = StateNotifierProvider<RentsNotifier, List<Rent>>((ref) {
  final notifier = RentsNotifier();
  notifier.carregarRents();
  return notifier;
});

final carroPlacaProvider = FutureProvider.family<String?, int>((ref, carId) async {
  final rentsNotifier = ref.watch(rentsProvider.notifier);
  return await rentsNotifier.getCarroPlaca(carId);
});

final carrosDisponiveisProvider = FutureProvider<List<Car>>((ref) async {
  final rentsNotifier = ref.watch(rentsProvider.notifier); 
  return await rentsNotifier.getAllCarsByStatus('Disponível'); 
});

final carrosAlugadosProvider = FutureProvider<List<Car>>((ref) async {
  final rentsNotifier = ref.watch(rentsProvider.notifier); 
  return await rentsNotifier.getAllCarsByStatus('Alugado'); 
});

final carroPriceProvider = FutureProvider.family<double?, String?>((ref, carroId) async {
  final rentsNotifier = ref.watch(rentsProvider.notifier); 
  return await rentsNotifier.getCarroById(int.parse(carroId!));
});

final carrosMaisAlugadosProvider = FutureProvider<List<Map<String, dynamic>>>((ref) async {
  final rentsNotifier = ref.watch(rentsProvider.notifier);
  return await rentsNotifier.getCarrosMaisAlugados();
});

final carroStatusProvider = FutureProvider.family<String?, int>((ref, carId) async {
  final rentsNotifier = ref.watch(rentsProvider.notifier);
 return await rentsNotifier.getCarroStatus(carId);
});
