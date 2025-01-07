import 'package:connectcar/widgets/formulario/formulario_data.dart';
import 'package:connectcar/widgets/valor_total_estilo.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; 

class Orcamento extends StatefulWidget {
  final TextEditingController? dataRetiradaController;
  final TextEditingController? dataDevolucaoController;
  final double valueCar;

  const Orcamento({
    super.key,
    this.dataRetiradaController,
    this.dataDevolucaoController,
    required this.valueCar,
  });

  @override
  OrcamentoState createState() => OrcamentoState();
}

class OrcamentoState extends State<Orcamento> {

  DateTime? dataRetirada;
  DateTime? dataDevolucao;

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
        const SizedBox(height: 4),
        FormularioData(
          label: 'Data de Retirada',
          controller: widget.dataRetiradaController ?? TextEditingController(),
          onChanged: (text) => _atualizarDataRetirada(text),
        ),
        FormularioData(
          label: 'Data de Devolução',
          controller: widget.dataDevolucaoController ?? TextEditingController(),
          onChanged: (text) => _atualizarDataDevolucao(text),
        ),
        ValorTotalEstilo(valorTotal: _calcularValorTotal()),
      ],
    );
  }

  void _atualizarDataRetirada(String text) {
    setState(() {
      dataRetirada = DateFormat('dd/MM/yyyy').parse(text);
    });
  }

  void _atualizarDataDevolucao(String text) {
    setState(() {
      dataDevolucao = DateFormat('dd/MM/yyyy').parse(text);
    });
  }

  String _calcularValorTotal() {
    if (dataRetirada != null && dataDevolucao != null) {
      int dias = dataDevolucao!.difference(dataRetirada!).inDays;
      if (dias > 0) {
        double valorTotal = dias * widget.valueCar;
        return valorTotal.toStringAsFixed(2);
      }
    }
    return '0.00'; 
  }
}
