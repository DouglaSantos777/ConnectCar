import 'package:connectcar/widgets/formulario/formulario_categorias.dart';
import 'package:connectcar/widgets/formulario/formulario_descricao.dart';
import 'package:connectcar/widgets/formulario/formulario_disponibilidade.dart';
import 'package:connectcar/widgets/formulario/formulario_numerico.dart';
import 'package:connectcar/widgets/formulario/formulario_texto.dart';
import 'package:flutter/material.dart';

class CadastroCarros extends StatelessWidget {
  final TextEditingController marcaController;
  final TextEditingController modeloController;
  final TextEditingController anoController;
  final TextEditingController placaController;
  final TextEditingController renavamController;
  final TextEditingController categoriaController;
  final TextEditingController precoController;
  final TextEditingController descricaoController;
  final Function(bool) onDisponibilidadeChanged;

  const CadastroCarros({
    required this.marcaController,
    required this.modeloController,
    required this.anoController,
    required this.placaController,
    required this.renavamController,
    required this.categoriaController,
    required this.precoController,
    required this.descricaoController,
    required this.onDisponibilidadeChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          FormularioTexto(controller: marcaController, label: 'Marca'),
          FormularioTexto(controller: modeloController, label: 'Modelo'),
          FormularioNumerico(controller: anoController, label: 'Ano', maskType: 'ano'),
          FormularioTexto(controller: placaController, label: 'Placa', maskType: 'placa'),
          FormularioNumerico(controller: renavamController, label: 'Renavam', maskType: 'renavam'),
          FormularioCategorias(controller: categoriaController),
          FormularioNumerico(controller: precoController, label: 'Preço por dia', maskType: 'preco'),
          FormularioDescricao(controller: descricaoController, label: 'Descrição'),
          FormularioDisponibilidade(onChangedDisponibilidade: onDisponibilidadeChanged,),
        ],
      ),
    );
  }
}
