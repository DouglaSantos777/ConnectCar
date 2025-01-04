import 'package:connectcar/widgets/custom_app_bar.dart';
import 'package:connectcar/widgets/formulario/botao_cadastro.dart';
import 'package:connectcar/widgets/formulario/formulario_descricao.dart';
import 'package:connectcar/widgets/formulario/formulario_numerico.dart';
import 'package:connectcar/widgets/formulario/formulario_preco.dart';
import 'package:connectcar/widgets/formulario/formulario_texto.dart';
import 'package:flutter/material.dart';

class AdicionarCarroScreen extends StatefulWidget {
  const AdicionarCarroScreen({super.key});

  @override
  State<AdicionarCarroScreen> createState() => _AdicionarCarroScreenState();
}

class _AdicionarCarroScreenState extends State<AdicionarCarroScreen> {
  final TextEditingController marcaController = TextEditingController();
  final TextEditingController modeloController = TextEditingController();
  final TextEditingController anoController = TextEditingController();
  final TextEditingController placaController = TextEditingController();
  final TextEditingController renavamController = TextEditingController();
  final TextEditingController categoriaController = TextEditingController();
  final TextEditingController precoController = TextEditingController();
  final TextEditingController descricaoController = TextEditingController();

  void _salvarCarro() async {
    final marca = marcaController.text;
    final modelo = modeloController.text;
    final ano = anoController.value;
    final placa = placaController.text;
    final renavam = renavamController.text;
    final categoria = categoriaController.text;
    final preco = precoController.value;
    final descricao = descricaoController.text;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Adicionar carro'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              children: [
                const Text(
                  'Insira os dados do veículo nos campos abaixo:',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 14),
                Form(
                  child: Column(
                    children: [
                      const FormularioTexto(label: 'Marca'),
                      const FormularioTexto(label: 'Modelo'),
                      const FormularioNumerico(label: 'Ano'),
                      const FormularioTexto(label: 'Placa'),
                      const FormularioNumerico(label: 'Renavam'),
                      const FormularioTexto(label: 'Categoria'),
                      FormularioPreco(label: 'Preço por dia'),
                      const FormularioDescricao(label: 'Descrição'),
                      
                      BotaoCadastro(label: 'Cadastrar carro', onPressed: _salvarCarro)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}