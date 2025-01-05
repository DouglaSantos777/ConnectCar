import 'package:connectcar/data/dao/car_dao.dart';
import 'package:connectcar/data/database/database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:connectcar/data/provider/car_provider.dart';

final databaseProvider = Provider<Database>((ref) {
  return Database(); 
});

final carDaoProvider = Provider<CarDao>((ref) {
  final database = ref.watch(databaseProvider); 
  return CarDao(database); 
});

final carProvider = ChangeNotifierProvider<CarProvider>((ref) {
  final carDao = ref.watch(carDaoProvider); 
  return CarProvider(carDao); 
});





