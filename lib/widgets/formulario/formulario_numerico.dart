import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormularioNumerico extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final String maskType;

  const FormularioNumerico({
    super.key,
    required this.label,
    this.controller,
    required this.maskType,
  });

  @override
  Widget build(BuildContext context) {
    TextInputType keyboardType;
    List<TextInputFormatter> inputFormatters = [];

    switch (maskType) {
      case 'ano':
        keyboardType = TextInputType.number;
        inputFormatters = [FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(4)];
        break;
      case 'renavam':
        keyboardType = TextInputType.number;
        inputFormatters = [FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(11)];
        break;
      case 'cpf':
        keyboardType = TextInputType.number;
        inputFormatters = [FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(11)];
      case 'telefone':
        keyboardType = TextInputType.number;
        inputFormatters = [FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(11)];
      case 'cep':
        keyboardType = TextInputType.number;
        inputFormatters = [FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(8)];
      case 'preco':
        keyboardType = const TextInputType.numberWithOptions(decimal: true);
        inputFormatters = [
          FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
        ];
        break;
      default:
        keyboardType = TextInputType.number;
        inputFormatters = [FilteringTextInputFormatter.digitsOnly];
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: maskType == 'preco' ? const Icon(Icons.attach_money) : const Icon(Icons.numbers_rounded),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Campo obrigatório';
          }

          if (maskType == 'preco') {
            if (!RegExp(r'^\d+(\.\d{0,2})?$').hasMatch(value)) {
              return 'Digite um preço válido com até duas casas decimais';
            }
          } else if (int.tryParse(value) == null) {
            return 'Digite apenas números';
          }

          return null;
        },
      ),
    );
  }
}
