import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:connectcar/data/database/database.dart';

class ClientesNotifier extends StateNotifier<List<ClienteData>> {
  ClientesNotifier() : super([]);

  Future<void> carregarClientes() async {
    final db = await Database.open();
    state = await db.getAllClientes();
  }

  Future<void> adicionarCliente(ClienteData novoCliente) async {
    state = [...state, novoCliente];
  }
}

final clientesProvider = StateNotifierProvider<ClientesNotifier, List<ClienteData>>((ref) {
  final notifier = ClientesNotifier();
  notifier.carregarClientes();  
  return notifier;
});
