import 'package:connectcar/data/database/database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final carrosProvider = StateNotifierProvider<CarrosNotifier, List<Car>>((ref) {
  return CarrosNotifier();
});

class CarrosNotifier extends StateNotifier<List<Car>> {
  CarrosNotifier() : super([]);

  void atualizarStatusCarro(int carId, String novoStatus) {
    state = [
      for (final car in state)
        if (car.id == carId)
          car.copyWith(status: novoStatus)  
        else
          car,
    ];
  }
}
