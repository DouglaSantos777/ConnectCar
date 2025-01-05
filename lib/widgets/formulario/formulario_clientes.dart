/*
import 'package:connectcar/models/app_database.dart';
import 'package:connectcar/riverpod/clientes_notifier.dart';
import 'package:flutter/material.dart';
import 'package:connectcar/theme/cores_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FormularioClientes extends ConsumerStatefulWidget {
  final String? clienteSelecionado;
  final void Function(String?) onChanged;

  const FormularioClientes({
    super.key,
    required this.onChanged,
    this.clienteSelecionado,
  });

  @override
  ConsumerState<FormularioClientes> createState() => _FormularioClientesState();
}

class _FormularioClientesState extends ConsumerState<FormularioClientes> {
  final TextEditingController _cpfController = TextEditingController();
  List<ClienteData> clientesFiltrados = [];

  @override
  Widget build(BuildContext context) {
    final clientes = ref.watch(clientesProvider);

    void _filtrarClientes(String cpf) {
      setState(() {
        clientesFiltrados = clientes.where((cliente) {
          return cliente.cpf.contains(cpf) || cliente.nome.toLowerCase().contains(cpf.toLowerCase());
        }).toList();
      });
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: _cpfController,
            decoration: const InputDecoration(
              labelText: 'Pesquisar por CPF ou Nome',
              prefixIcon: Icon(Icons.search),
            ),
            onChanged: _filtrarClientes,
          ),
          const SizedBox(height: 10),
          clientes.isEmpty
              ? const Text('Nenhum cliente encontrado.')
              : DropdownButtonFormField<String>(
                  value: widget.clienteSelecionado,
                  hint: const Text(
                    'Selecione um cliente',
                    style: TextStyle(color: CoresTheme.textoEscuroClaro, fontWeight: FontWeight.w700),
                  ),
                  items: (clientesFiltrados.isEmpty ? clientes : clientesFiltrados).map((cliente) {
                    return DropdownMenuItem<String>(
                      value: cliente.cpf,
                      child: Text('${cliente.nome} - ${cliente.cpf}'),
                    );
                  }).toList(),
                  onChanged: widget.onChanged,
                ),
        ],
      ),
    );
  }
}
*/