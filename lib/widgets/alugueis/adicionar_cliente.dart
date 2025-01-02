import 'package:connectcar/widgets/formulario/formulario_descricao.dart';
import 'package:connectcar/widgets/formulario/formulario_numerico.dart';
import 'package:connectcar/widgets/formulario/formulario_texto.dart';
import 'package:flutter/material.dart';

class AdicionarCliente extends StatelessWidget {
  const AdicionarCliente({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Insira os dados do cliente:',
          style: TextStyle(
            color: Colors.blueAccent,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        SizedBox(height: 14),
        FormularioTexto(label: 'Nome'),
        FormularioTexto(label: 'CPF'),
        FormularioNumerico(label: 'CNH'),
        FormularioDescricao(label: 'Endereço'),
        FormularioTexto(label: 'Telefone'),
        FormularioTexto(label: 'Email'),
      ],
    );
  }
}