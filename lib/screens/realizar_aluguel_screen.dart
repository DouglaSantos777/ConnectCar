import 'package:connectcar/widgets/alugueis/adicionar_cliente.dart';
import 'package:connectcar/widgets/alugueis/orcamento.dart';
import 'package:connectcar/widgets/formulario/botao_cadastro.dart';
import 'package:connectcar/widgets/formulario/formulario_carros.dart';
import 'package:connectcar/widgets/formulario/formulario_clientes.dart';
import 'package:connectcar/widgets/formulario/formulario_data.dart';
import 'package:flutter/material.dart';

class RealizarAluguelScreen extends StatefulWidget {
  const RealizarAluguelScreen({super.key});

  @override
  State<RealizarAluguelScreen> createState() => _RealizarAluguelScreenState();
}

class _RealizarAluguelScreenState extends State<RealizarAluguelScreen> {
  String? clienteSelecionado;
  String? carroSelecionado;

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
                      'Selecione o cliente:',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 14),
                    FormularioClientes(
                      clientes: const {
                        '123.456.789-00': 'João Silva',
                        '987.654.321-00': 'Maria Oliveira',
                        '111.222.333-44': 'Carlos Santos',
                      },
                      clienteSelecionado: clienteSelecionado,
                      onChanged: (String? newValue) {
                        setState(() {
                          clienteSelecionado = newValue;
                        });
                      },
                    ),
                    const Text(
                      'Selecione o carro:',
                      style: TextStyle(
                        color: Colors.blueAccent,
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
                      const AdicionarCliente(),
                    ],
                    const Orcamento(),
                    const Text(
                      'Selecione a data de pagamento:',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 14),
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