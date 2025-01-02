import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class InserirImagem extends StatefulWidget {
  const InserirImagem({super.key});

  @override
  _InserirImagemState createState() => _InserirImagemState();
}

class _InserirImagemState extends State<InserirImagem> {
  XFile? _imagemSelecionada;

  final ImagePicker _picker = ImagePicker();

  // Função para selecionar a imagem
  Future<void> _selecionarImagem() async {
    final XFile? imagem = await _picker.pickImage(source: ImageSource.gallery);
    
    setState(() {
      _imagemSelecionada = imagem;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inserir Imagem'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Exibe a imagem ou uma mensagem, dependendo do estado
            _imagemSelecionada != null
                ? Image.file(
                    File(_imagemSelecionada!.path),
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  )
                : const Text('Nenhuma imagem selecionada'),
            const SizedBox(height: 20),
            // Botão para selecionar a imagem
            ElevatedButton(
              onPressed: () async {
                // Garante que o layout foi feito antes de qualquer interação
                await Future.delayed(Duration(milliseconds: 100));
                _selecionarImagem();
              },
              child: const Text('Selecionar Imagem'),
            ),
          ],
        ),
      ),
    );
  }
}
