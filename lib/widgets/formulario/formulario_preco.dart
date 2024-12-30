import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormularioPreco extends StatelessWidget {
  final TextEditingController valorController = TextEditingController();
  final String label;

  FormularioPreco({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: valorController,
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d{0,2}')),
        ],
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.w500,
          ),
          prefixIcon: const Icon(Icons.attach_money, color: Colors.blueAccent, size: 24),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.blueAccent,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.blueAccent,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
          fillColor: Colors.white70,
          filled: true, 
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Campo obrigatório';
          }
          final parsedValue = double.tryParse(value.replaceAll(',', '.'));
          if (parsedValue == null) {
            return 'Insira um valor válido';
          }
          return null;
        },
      ),
    );
  }
}
