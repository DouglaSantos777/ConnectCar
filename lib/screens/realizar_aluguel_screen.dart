import 'package:connectcar/widgets/alugueis/orcamento.dart';
import 'package:connectcar/widgets/custom_app_bar.dart';
import 'package:connectcar/widgets/formulario/botao_cadastro.dart';
import 'package:connectcar/widgets/formulario/formulario_carros.dart';
import 'package:connectcar/widgets/formulario/formulario_clientes.dart';
import 'package:connectcar/widgets/formulario/formulario_data.dart';
import 'package:flutter/material.dart';
import 'package:connectcar/widgets/alugueis/adicionar_cliente.dart';

class RealizarAluguelScreen extends StatefulWidget {
  const RealizarAluguelScreen({super.key});

  @override
  State<RealizarAluguelScreen> createState() => _RealizarAluguelScreenState();
}

class _RealizarAluguelScreenState extends State<RealizarAluguelScreen> {
  String? clienteSelecionado;
  String? carroSelecionado;

  void _navigateToAdicionarCliente() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AdicionarCliente()),
    );

    if (result != null) {
      setState(() {
        clienteSelecionado = result; 
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Realizar aluguel'),
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
                    'Selecione o cliente:',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 14),
                  FormularioClientes(
                    clienteSelecionado: clienteSelecionado,
                    onChanged: (String? newValue) {
                      setState(() {
                        clienteSelecionado = newValue;
                      });
                    },
                  ),
                  const SizedBox(height: 14),
                  const Text(
                    'Selecione o carro:',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 14),
                  FormularioCarros(
                    carros: const {
                      'ABC-1234': 'Toyota Corolla',
                      'XYZ-5678': 'Honda Civic',
                      'JKL-9101': 'Ford Focus',
                      'MNO-3456': 'Toyota Corolla',  
                    },
                    carroSelecionado: carroSelecionado,
                    onChanged: (String? newValue) {
                      setState(() {
                        carroSelecionado = newValue;
                      });
                    },
                  ),
                  if (clienteSelecionado == null) ...[
                    ElevatedButton(
                      onPressed: _navigateToAdicionarCliente,
                      child: const Text('Adicionar Cliente'),
                    ),
                  ],
                  const Orcamento(),
                  const Text(
                    'Selecione a data de pagamento:',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 14),
                  const FormularioData(label: 'Data de Pagamento'), 
                  BotaoCadastro(
                    label: 'Finalizar aluguel',
                    onPressed: () {
                      if (clienteSelecionado == null || carroSelecionado == null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Por favor, selecione cliente e carro!')),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Aluguel finalizado com sucesso!')),
                        );
                      }
                    }
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
