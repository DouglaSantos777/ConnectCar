import 'package:flutter/material.dart';

class FormularioTexto extends StatelessWidget {
  final String label;
  final TextInputType inputType;
  final TextEditingController? controller;
  final bool obscureText;
  final String? Function(String?)? validator;

  const FormularioTexto({
    super.key,
    required this.label,
    this.inputType = TextInputType.text,
    this.controller,
    this.obscureText = false,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: controller,
        keyboardType: inputType,
        obscureText: obscureText,
        validator: validator ??
            (value) {
              if (value == null || value.isEmpty) {
                return 'Campo obrigatório';
              }
              return null;
            },
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: const Icon(Icons.edit,), 
        ),
      ),
    );
  }
}