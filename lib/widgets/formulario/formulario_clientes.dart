import 'package:flutter/material.dart';

class FormularioClientes extends StatefulWidget {
  final Map<String, String> clientes; 
  final String? clienteSelecionado;
  final void Function(String?) onChanged;

  const FormularioClientes({
    super.key,
    required this.clientes,
    required this.onChanged,
    this.clienteSelecionado,
  });

  @override
  State<FormularioClientes> createState() => _FormularioClientesState();
}

class _FormularioClientesState extends State<FormularioClientes> {
  final TextEditingController _cpfController = TextEditingController();
  List<MapEntry<String, String>> clientesFiltrados = [];

  @override
  void initState() {
    super.initState();
    clientesFiltrados = widget.clientes.entries.toList();
  }

  void _filtrarClientes(String cpf) {
    setState(() {
      clientesFiltrados = widget.clientes.entries
        .where((cliente) =>
            cliente.key.contains(cpf) || cliente.value.toLowerCase().contains(cpf.toLowerCase()))
        .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
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
              border: OutlineInputBorder(),
            ),
            onChanged: _filtrarClientes,
          ),
          const SizedBox(height: 10),
          DropdownButtonFormField<String>(
            value: widget.clienteSelecionado,
            hint: const Text('Selecione um cliente'),
            items: clientesFiltrados.map((cliente) {
              return DropdownMenuItem<String>(
                value: cliente.key,  
                child: Text('${cliente.value} - ${cliente.key}'), 
              );
            }).toList(),
            onChanged: widget.onChanged,
          ),
        ],
      ),
    );
  }
}
