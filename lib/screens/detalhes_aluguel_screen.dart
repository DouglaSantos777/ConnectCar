import 'package:flutter/material.dart';

class DetalhesAluguelScreen extends StatelessWidget {
  const DetalhesAluguelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do Aluguel'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // fazer um card de carro que vai para tela de informações dele
              Container(
                padding: const EdgeInsets.all(16),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    )
                  ],
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Informações do Cliente:',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                      ),
                    SizedBox(height: 8),
                    Text('Nome {cliente}', style: TextStyle(fontSize: 18, color: Colors.black54)),
                    Text('CPF {cliente} - CNH {cliente}',style: TextStyle(fontSize: 18, color: Colors.black54)),
                    Text('Endereço {cliente}',style: TextStyle(fontSize: 18, color: Colors.black54)),
                    Text('Telefone {cliente} - Email {cliente}',style: TextStyle(fontSize: 18, color: Colors.black54)),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.all(16),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Informações do Aluguel:', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87)),
                    const SizedBox(height: 8),
                    const Text('Data de Retirada {aluguel}', style: TextStyle(fontSize: 18, color: Colors.black54)),
                    const Text('Data de Devolução {cliente} - CNH {cliente}', style: TextStyle(fontSize: 18, color: Colors.black54)),
                    const Text('Valor Total {cliente}', style: TextStyle(fontSize: 18, color: Colors.black54)),
                    const SizedBox(height: 16),

                    // se o cliente já pagou:
                    const Text('Data do Pagamento {cliente}',style: TextStyle(fontSize: 18, color: Colors.red)),
                    const SizedBox(height: 16),

                    // se o cliente não pagou
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                        )),
                      child: const Text('Registrar Pagamento', style: TextStyle(fontSize: 18)),
                    ),
                    const SizedBox(height: 12),

                    //quando clicar as informações vão para o histórico
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                        )),
                      child: const Text('Registrar Devolução',
                        style: TextStyle(fontSize: 18)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
