import 'package:connectcar/widgets/formulario/formulario_data.dart';
import 'package:connectcar/widgets/valor_total_estilo.dart';
import 'package:flutter/material.dart';

class Orcamento extends StatelessWidget {
  final TextEditingController? dataRetiradaController;
  final TextEditingController? dataDevolucaoController;

  const Orcamento({
    super.key,
    this.dataRetiradaController,
    this.dataDevolucaoController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Realize o orçamento:',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 14),
        FormularioData(
          label: 'Data de Retirada',
          controller: dataRetiradaController ?? TextEditingController(),
        ),
        FormularioData(
          label: 'Data de Devolução',
          controller: dataDevolucaoController ?? TextEditingController(), 
        ),
        const ValorTotalEstilo(valorTotal: '500.00'),
      ],
    );
  }
}
