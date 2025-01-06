import 'package:drift/drift.dart';

class Cliente extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get nome => text().withLength(max: 100)();
  TextColumn get cpf => text().withLength(max: 14)();
  TextColumn get cnh => text().withLength(max: 20)();

  TextColumn get enderecoRua => text().withLength(max: 100)();
  TextColumn get enderecoNumero => text().withLength(max: 10)();
  TextColumn get enderecoBairro => text().withLength(max: 50)();
  TextColumn get enderecoCidade => text().withLength(max: 50)();
  TextColumn get enderecoEstado => text().withLength(max: 2)();
  TextColumn get enderecoCep => text().withLength(max: 10)();
  
  TextColumn get telefone => text().withLength(max: 15)();
  TextColumn get email => text().withLength(max: 100)();
}