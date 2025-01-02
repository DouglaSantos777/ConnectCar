import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormularioNumerico extends StatelessWidget {
  final String label;
  final TextEditingController? controller;

  const FormularioNumerico({
    super.key,
    required this.label,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.number, 
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: const Icon(Icons.numbers_rounded, color: Colors.blueAccent, size: 24),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Campo obrigatório';
          }
          if (int.tryParse(value) == null) {
            return 'Digite apenas números';
          }
          return null;
        },
      ),
    );
  }
}
