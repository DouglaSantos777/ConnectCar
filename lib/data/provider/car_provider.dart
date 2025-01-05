
import 'package:flutter/material.dart';
import 'package:connectcar/data/dao/car_dao.dart';
import 'package:connectcar/data/database/database.dart';

class CarProvider extends ChangeNotifier {
  final CarDao carDao;

  List<Car> _cars = [];
  List<Car> get cars => _cars;

  CarProvider(this.carDao) {
    _loadCars();
  }

  Future<void> _loadCars() async {
    _cars = await carDao.getAllCars();
    notifyListeners();
  }

  Future<void> addCar(CarsCompanion car) async {
    await carDao.insertCar(car);
    await _loadCars(); 
  }

  Future<void> updateCar(CarsCompanion car) async {
    await carDao.updateCar(car);
    await _loadCars();  
  }

  Future<void> deleteCar(int id) async {
    await carDao.deleteCar(id);
    await _loadCars();  
  }
}
