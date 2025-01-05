import 'package:flutter/material.dart';

class FormularioDescricao extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  const FormularioDescricao({super.key, required this.label, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextField(
        controller: controller,
        maxLines: 4, 
        minLines: 2, 
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: const Icon(Icons.edit),
          contentPadding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
        ),
      ),
    );
  }
}
