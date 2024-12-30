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
          labelStyle: const TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.w500,
          ),
          prefixIcon: const Icon(Icons.edit, color: Colors.blueAccent, size: 24,), 
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
      ),
    );
  }
}