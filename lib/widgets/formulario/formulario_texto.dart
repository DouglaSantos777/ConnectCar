import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormularioTexto extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final String? maskType; 

  const FormularioTexto({
    super.key,
    required this.label,
    this.controller,
    this.maskType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.text,
        inputFormatters: _getInputFormatters(maskType), 
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: const Icon(
            Icons.edit,
          ),
        ),
      ),
    );
  }

  List<TextInputFormatter> _getInputFormatters(String? maskType) {
    switch (maskType) {
      case 'cnh':
        return [LengthLimitingTextInputFormatter(11)];
      case 'placa':
        return [LengthLimitingTextInputFormatter(7)];
      case 'uf':
        return [UpperCaseTextFormatter(), LengthLimitingTextInputFormatter(2)];
      default:
        return [];
    }
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}
