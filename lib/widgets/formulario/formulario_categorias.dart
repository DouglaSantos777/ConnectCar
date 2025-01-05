import 'package:flutter/material.dart';

class FormularioCategorias extends StatelessWidget {
  final TextEditingController controller;

  const FormularioCategorias({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    final categorias = [
      'GNV',
      'Flex',
      'Diesel',
      'Híbrido',
      'Elétrico',
      'Gasolina',
    ];

    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: DropdownButtonFormField<String>(
        value: controller.text.isNotEmpty ? controller.text : null,  
        decoration: const InputDecoration(
          labelText: 'Categoria',
          border: OutlineInputBorder(),
        ),
        items: categorias.map((String categoria) {
          return DropdownMenuItem<String>(
            value: categoria,
            child: Text(categoria),
          );
        }).toList(),
        onChanged: (String? newCategoria) {
          if (newCategoria != null) {
            controller.text = newCategoria;
          }
        },
      ),
    );
  }
}
