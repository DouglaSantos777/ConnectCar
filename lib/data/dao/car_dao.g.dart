// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_dao.dart';

// ignore_for_file: type=lint
mixin _$CarDaoMixin on DatabaseAccessor<Database> {
  $CategoriesTable get categories => attachedDatabase.categories;
  $StatusTable get status => attachedDatabase.status;
  $CarsTable get cars => attachedDatabase.cars;
  Selectable<CarrosComStatusEcategoriaResult> carrosComStatusEcategoria() {
    return customSelect(
        'SELECT * FROM cars LEFT JOIN categories ON cars.category = categories.nome LEFT JOIN status ON cars.status = status.nome',
        variables: [],
        readsFrom: {
          cars,
          categories,
          status,
        }).map((QueryRow row) => CarrosComStatusEcategoriaResult(
          id: row.read<int>('id'),
          renavam: row.read<int>('renavam'),
          plate: row.read<String>('plate'),
          brand: row.read<String>('brand'),
          model: row.read<String>('model'),
          year: row.read<int>('year'),
          priceByDay: row.read<double>('price_by_day'),
          photo: row.read<String>('photo'),
          description: row.read<String>('description'),
          createdAt: row.read<DateTime>('created_at'),
          category: row.read<String>('category'),
          status: row.read<String>('status'),
          nome: row.readNullable<String>('nome'),
          nome1: row.readNullable<String>('nome'),
        ));
  }
}

class CarrosComStatusEcategoriaResult {
  final int id;
  final int renavam;
  final String plate;
  final String brand;
  final String model;
  final int year;
  final double priceByDay;
  final String photo;
  final String description;
  final DateTime createdAt;
  final String category;
  final String status;
  final String? nome;
  final String? nome1;
  CarrosComStatusEcategoriaResult({
    required this.id,
    required this.renavam,
    required this.plate,
    required this.brand,
    required this.model,
    required this.year,
    required this.priceByDay,
    required this.photo,
    required this.description,
    required this.createdAt,
    required this.category,
    required this.status,
    this.nome,
    this.nome1,
  });
}
