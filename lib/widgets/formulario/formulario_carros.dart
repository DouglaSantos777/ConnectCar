import 'package:flutter/material.dart';

class FormularioCarros extends StatefulWidget {
  final Map<String, String> carros; // chave: placa ou renavam, valor: modelo
  final String? carroSelecionado;
  final void Function(String?) onChanged;

  const FormularioCarros({
    super.key,
    required this.carros,
    required this.onChanged,
    this.carroSelecionado,
  });

  @override
  State<FormularioCarros> createState() => _FormularioCarrosState();
}

class _FormularioCarrosState extends State<FormularioCarros> {
  late List<MapEntry<String, String>> _carrosFiltrados = [];  
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _carrosFiltrados = widget.carros.entries.toList();
  }

  void _filtrarCarros(String query) {
    setState(() {
      _carrosFiltrados = widget.carros.entries
          .where((entry) =>
              entry.value.toLowerCase().contains(query.toLowerCase()) ||
              entry.key.toLowerCase().contains(query.toLowerCase()))
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
            controller: _controller,
            decoration: const InputDecoration(
              labelText: 'Pesquisar carro',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
            onChanged: _filtrarCarros,
          ),
          const SizedBox(height: 12),
          DropdownButtonFormField<String>(
            value: widget.carroSelecionado,
            hint: const Text('Selecione um carro'),
            items: _carrosFiltrados.map((entry) {
              return DropdownMenuItem<String>(
                value: entry.key,
                child: Text('${entry.value} - ${entry.key}'),
              );
            }).toList(),
            onChanged: widget.onChanged,
            isExpanded: true,
          ),
        ],
      ),
    );
  }
}
