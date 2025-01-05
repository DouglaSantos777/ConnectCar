import 'dart:io';  
import 'package:connectcar/widgets/botao_insercao.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class FormularioImagem extends StatefulWidget {
  final Function(String) onImagemSelecionada; 

  const FormularioImagem({super.key, required this.onImagemSelecionada});

  @override
  FormularioImagemState createState() => FormularioImagemState();
}

class FormularioImagemState extends State<FormularioImagem> {
  XFile? _imagemSelecionada; 
  final ImagePicker _picker = ImagePicker(); 

  Future<void> _selecionarImagem() async {
    final XFile? imagem = await _picker.pickImage(source: ImageSource.gallery);

    if (imagem != null) {
      setState(() {
        _imagemSelecionada = imagem;
      });
      widget.onImagemSelecionada(imagem.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BotaoInsercao(
          label: 'Selecionar Imagem',
          onPressed: _selecionarImagem,
        ),
        const SizedBox(height: 8,),
        _imagemSelecionada != null
            ? Image.file(
                File(_imagemSelecionada!.path),
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              )
            : const Text('Nenhuma imagem selecionada'),
        const SizedBox(height: 20),
      ],
    );
  }
}
