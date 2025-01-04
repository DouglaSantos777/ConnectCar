import 'package:connectcar/models/app_database.dart';
import 'package:flutter/material.dart';

class CardCliente extends StatefulWidget {
  final int clienteId;  // Adicionar o id do cliente como parâmetro

  const CardCliente({super.key, required this.clienteId});

  @override
  State<CardCliente> createState() => _CardClienteState();
}

class _CardClienteState extends State<CardCliente> {
  late Future<ClienteData?> _clienteFuture;

  @override
  void initState() {
    super.initState();
    _clienteFuture = _buscarClientePorId(widget.clienteId);
  }

  Future<ClienteData?> _buscarClientePorId(int id) async {
    final db = await AppDatabase.open();
    return db.getClienteById(id);  // Método que busca um cliente específico
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return FutureBuilder<ClienteData?>(
      future: _clienteFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Erro ao carregar cliente: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data == null) {
          return const Center(child: Text('Cliente não encontrado.'));
        } else {
          final cliente = snapshot.data!;
          return Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.only(bottom: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: isDarkMode ? Colors.grey[850] : Colors.white70,
              boxShadow: [
                BoxShadow(
                  color: isDarkMode
                      ? Colors.black.withOpacity(0.4)
                      : Colors.black.withOpacity(0.15),
                  blurRadius: 10,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Informações do Cliente:',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  'Nome: ${cliente.nome}',
                  style: const TextStyle(fontSize: 18),
                ),
                Text(
                  'CPF: ${cliente.cpf} - CNH: ${cliente.cnh}',
                  style: const TextStyle(fontSize: 18),
                ),
                Text(
                  'Endereço: Rua ${cliente.enderecoRua}, Nº${cliente.enderecoNumero}',
                  style: const TextStyle(fontSize: 18),
                ),
                Text(
                  'Bairro: ${cliente.enderecoBairro}, Cidade: ${cliente.enderecoCidade}',
                  style: const TextStyle(fontSize: 18),
                ),
                Text(
                  'CEP: ${cliente.enderecoCep}, Estado: ${cliente.enderecoEstado}',
                  style: const TextStyle(fontSize: 18),
                ),
                Text(
                  'Telefone: ${cliente.telefone}',
                  style: const TextStyle(fontSize: 18),
                ),
                Text(
                  'Email: ${cliente.email}',
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
