
import 'package:connectcar/data/dao/car_dao.dart';
import 'package:connectcar/data/database/database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:connectcar/data/provider/car_provider.dart';

final databaseProvider = FutureProvider<Database>((ref) async {
  return await Database.open(); 
});

final carDaoProvider = Provider<CarDao>((ref) {
  final databaseAsync = ref.watch(databaseProvider);

  return databaseAsync.when(
    data: (database) => CarDao(database), 
    loading: () => throw Exception('Database is loading'), 
    error: (error, stackTrace) => throw Exception('Error loading database: $error'), 
  );
});

final carProvider = ChangeNotifierProvider<CarProvider>((ref) {
  final carDao = ref.watch(carDaoProvider); 
  return CarProvider(carDao); 
});




