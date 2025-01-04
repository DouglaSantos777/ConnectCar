import 'package:connectcar/theme/cores_theme.dart';
import 'package:connectcar/widgets/alugueis/orcamento.dart';
import 'package:connectcar/widgets/custom_app_bar.dart';
import 'package:connectcar/widgets/formulario/botao_cadastro.dart';
import 'package:connectcar/widgets/formulario/formulario_carros.dart';
import 'package:connectcar/widgets/formulario/formulario_clientes.dart';
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
                    'Selecione ou adicione o cliente:',
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
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const AdicionarCliente()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: CoresTheme.backgroundBotao, 
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16), 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), 
                      ),
                      elevation: 5, 
                    ),
                    child: const Text(
                      'Adicionar Cliente',
                      style: TextStyle(
                        fontSize: 18, 
                        fontWeight: FontWeight.bold,
                        color: CoresTheme.textoTemaEscuro 
                      ),
                    ),
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
                  const Orcamento(),
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
