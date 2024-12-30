import 'package:connectcar/widgets/formulario/botao_cadastro.dart';
import 'package:connectcar/widgets/formulario/formulario_descricao.dart';
import 'package:connectcar/widgets/formulario/formulario_numerico.dart';
import 'package:connectcar/widgets/formulario/formulario_preco.dart';
import 'package:connectcar/widgets/formulario/formulario_radio.dart';
import 'package:connectcar/widgets/formulario/formulario_texto.dart';
import 'package:flutter/material.dart';

class AdicionarCarroScreen extends StatefulWidget {
  const AdicionarCarroScreen({super.key});

  @override
  State<AdicionarCarroScreen> createState() => _AdicionarCarroScreenState();
}

class _AdicionarCarroScreenState extends State<AdicionarCarroScreen> {
  String? _statusSelecionado;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: AppBar(
          title: const Text('Adicionar Carro'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                children: [
                  const Text(
                    'Insira os dados do veículo nos campos abaixo:',
                    style: TextStyle(
                      color: Colors.blueAccent,
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
                        FormularioRadio<String>(
                          options: const ['Disponível', 'Alugado'], 
                          selectedValue: _statusSelecionado,
                          onChanged: (value) {
                            setState(() {
                              _statusSelecionado = value;
                            });
                          },
                          labelBuilder: (option) => option, 
                        ),
                        FormularioPreco(label: 'Preço por dia'),
                        const FormularioDescricao(label: 'Descrição'),
                        
                        BotaoCadastro(label: 'Cadastrar carro', onPressed: (){})
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}