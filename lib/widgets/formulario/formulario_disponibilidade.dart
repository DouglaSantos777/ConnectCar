import 'package:flutter/material.dart';

class FormularioDisponibilidade extends StatefulWidget {
  final Function(bool) onChangedDisponibilidade;  

  const FormularioDisponibilidade({required this.onChangedDisponibilidade, super.key});

  @override
  FormularioDisponibilidadeState createState() => FormularioDisponibilidadeState();
}

class FormularioDisponibilidadeState extends State<FormularioDisponibilidade> {
  bool isDisponivel = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text('Disponível para aluguel:', style: TextStyle(fontSize: 20)),
          Checkbox(
            value: isDisponivel,
            onChanged: (bool? newValue) {
              setState(() {
                isDisponivel = newValue ?? true;
              });
              widget.onChangedDisponibilidade(isDisponivel);  
            },
          ),
        ],
      ),
    );
  }
}
