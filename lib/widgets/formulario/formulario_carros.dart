import 'package:connectcar/theme/cores_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:connectcar/riverpod/providers.dart';
import 'package:connectcar/data/database/database.dart';

class FormularioCarros extends ConsumerStatefulWidget {
  final String? carroSelecionado;
  final void Function(String?) onChanged;

  const FormularioCarros({
    super.key,
    required this.onChanged,
    this.carroSelecionado,
  });

  @override
  ConsumerState<FormularioCarros> createState() => _FormularioCarrosState();
}

class _FormularioCarrosState extends ConsumerState<FormularioCarros> {
  List<Car> _carrosFiltrados = [];  
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _carrosFiltrados = ref.read(carProvider).cars
      .where((car) => car.status == 'Disponível') 
      .toList();  
  }

  void _filtrarCarros(String query) {
    final carros = ref.read(carProvider).cars;

    setState(() {
      _carrosFiltrados = carros
        .where((car) => car.status == 'Disponível') 
        .where((car) {
          return car.model.toLowerCase().contains(query.toLowerCase()) ||
              car.plate.toLowerCase().contains(query.toLowerCase());
        }).toList();
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
            hint: const Text(
              'Selecione um carro',
              style: TextStyle(
                color: CoresTheme.textoEscuroClaro,
                fontWeight: FontWeight.w700,
              ),
            ),
            items: _carrosFiltrados.map((car) {
              return DropdownMenuItem<String>(
                value: car.id.toString(),
                child: Text('${car.model} - ${car.plate}'),
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