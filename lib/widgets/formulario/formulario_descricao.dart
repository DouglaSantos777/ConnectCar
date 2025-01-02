import 'package:flutter/material.dart';

class FormularioDescricao extends StatelessWidget {
  final String label;
  const FormularioDescricao({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextField(
        maxLines: 4, 
        minLines: 2, 
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: const Icon(Icons.edit, color: Colors.blueAccent, size: 24,),
          contentPadding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
        ),
      ),
    );
  }
}
