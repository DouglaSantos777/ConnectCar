
import 'package:connectcar/data/dao/car_dao.dart';
import 'package:connectcar/data/database/database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:connectcar/data/provider/car_provider.dart';

final databaseProvider = FutureProvider<Database>((ref) async {
  return await Database.open(); 
});

final carDaoProvider = FutureProvider<CarDao>((ref) async {
  final database = await ref.watch(databaseProvider.future);
  return CarDao(database);
});


final carProvider = ChangeNotifierProvider<CarProvider>((ref) {
  final carDaoAsync = ref.watch(carDaoProvider);
  
  return carDaoAsync.when(
    data: (carDao) => CarProvider(carDao), // Retorna o CarProvider com o carDao correto
    loading: () => throw Exception('Database is loading'),
    error: (error, stackTrace) => throw Exception('Error loading database: $error'),
  );
});




