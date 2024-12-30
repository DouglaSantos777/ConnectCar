import 'package:connectcar/widgets/formulario/botao_cadastro.dart';
import 'package:connectcar/widgets/formulario/formulario_data.dart';
import 'package:connectcar/widgets/formulario/formulario_descricao.dart';
import 'package:connectcar/widgets/formulario/formulario_numerico.dart';
import 'package:connectcar/widgets/formulario/formulario_radio.dart';
import 'package:connectcar/widgets/formulario/formulario_texto.dart';
import 'package:connectcar/widgets/valor_total_estilo.dart';
import 'package:flutter/material.dart';

class RealizarAluguelScreen extends StatefulWidget {
  const RealizarAluguelScreen({super.key});

  @override
  State<RealizarAluguelScreen> createState() => _RealizarAluguelScreenState();
}

class _RealizarAluguelScreenState extends State<RealizarAluguelScreen> {
  String? _statusSelecionado;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: AppBar(
          title: const Text('Realizar aluguel'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Insira os dados do cliente:',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 14),
                    const FormularioTexto(label: 'Nome'),
                    const FormularioTexto(label: 'CPF'),
                    const FormularioNumerico(label: 'CNH'),
                    const FormularioDescricao(label: 'Endereço'),
                    const FormularioTexto(label: 'Telefone'),
                    const FormularioTexto(label: 'Email'),

                    const Text(
                      'Realize o orçamento:',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 14),
                    const FormularioData(label: 'Data de Retirada'),
                    const FormularioData(label: 'Data de Devolução'),
                    const ValorTotalEstilo(valorTotal: '500.00'),

                    const Text(
                      'Realize o pagamento:',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 14),
                    FormularioRadio<String>(
                      options: const ['Pago', 'Pendente'], 
                      selectedValue: _statusSelecionado,
                      onChanged: (value) {
                        setState(() {
                          _statusSelecionado = value;
                        });
                      },
                      labelBuilder: (option) => option, 
                    ),
                    const FormularioData(label: 'Data de Pagamento'), 

                    BotaoCadastro(label: 'Finalizar aluguel', onPressed: (){})
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}