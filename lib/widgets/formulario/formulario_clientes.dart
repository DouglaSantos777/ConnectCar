import 'package:connectcar/models/app_database.dart';
import 'package:flutter/material.dart';
import 'package:connectcar/theme/cores_theme.dart';  

class FormularioClientes extends StatefulWidget {
  final String? clienteSelecionado;
  final void Function(String?) onChanged;

  const FormularioClientes({
    super.key,
    required this.onChanged,
    this.clienteSelecionado,
  });

  @override
  State<FormularioClientes> createState() => _FormularioClientesState();
}

class _FormularioClientesState extends State<FormularioClientes> {
  final TextEditingController _cpfController = TextEditingController();
  List<ClienteData> clientesFiltrados = [];
  late Future<List<ClienteData>> _clientesFuture;

  @override
  void initState() {
    super.initState();
    _clientesFuture = AppDatabase.open().then((db) => db.getAllClientes()); 
  }

  void _filtrarClientes(String cpf) {
    setState(() {
      _clientesFuture.then((clientes) {
        clientesFiltrados = clientes.where((cliente) {
          return cliente.cpf.contains(cpf) || cliente.nome.toLowerCase().contains(cpf.toLowerCase());
        }).toList();
      });
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
            ),
            onChanged: _filtrarClientes,
          ),
          const SizedBox(height: 10),
          FutureBuilder<List<ClienteData>>(
            future: _clientesFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              }
              if (snapshot.hasError) {
                return Text('Erro: ${snapshot.error}');
              }
              if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return const Text('Nenhum cliente encontrado.');
              }

              if (clientesFiltrados.isEmpty) {
                clientesFiltrados = snapshot.data!;
              }

              return DropdownButtonFormField<String>(
                value: widget.clienteSelecionado,
                hint: const Text(
                  'Selecione um cliente',
                  style: TextStyle(color: CoresTheme.textoEscuroClaro, fontWeight: FontWeight.w700),
                ),
                items: clientesFiltrados.map((cliente) {
                  return DropdownMenuItem<String>(
                    value: cliente.cpf, 
                    child: Text('${cliente.nome} - ${cliente.cpf}'),
                  );
                }).toList(),
                onChanged: widget.onChanged,
              );
            },
          ),
        ],
      ),
    );
  }
}
