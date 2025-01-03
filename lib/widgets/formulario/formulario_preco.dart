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
          prefixIcon: const Icon(Icons.attach_money),
        ),
      ),
    );
  }
}
