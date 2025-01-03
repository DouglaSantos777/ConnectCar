import 'package:connectcar/widgets/formulario/formulario_data.dart';
import 'package:connectcar/widgets/valor_total_estilo.dart';
import 'package:flutter/material.dart';

class Orcamento extends StatelessWidget {
  const Orcamento({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Realize o orçamento:',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        SizedBox(height: 14),
        FormularioData(label: 'Data de Retirada'),
        FormularioData(label: 'Data de Devolução'),
        ValorTotalEstilo(valorTotal: '500.00'),
      ],
    );
  }
}