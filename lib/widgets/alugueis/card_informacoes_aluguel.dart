import 'package:connectcar/theme/cores_theme.dart';
import 'package:connectcar/widgets/botao_cadastro.dart';
import 'package:flutter/material.dart';

class CardInformacoesAluguel extends StatelessWidget {
  const CardInformacoesAluguel({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: isDarkMode ? Colors.grey[850] : Colors.white70, 
        boxShadow: [
          BoxShadow(
            color: isDarkMode ? Colors.black.withOpacity(0.4) : Colors.black.withOpacity(0.15),
            blurRadius: 10,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Informações do Aluguel:',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: isDarkMode ? CoresTheme.textoTemaEscuro : CoresTheme.textoPrimarioClaro, 
            ),
          ),
          const SizedBox(height: 12),
          const Text('Data de Retirada {aluguel}', style: TextStyle(fontSize: 18)),
          const Text('Data de Devolução {aluguel}', style: TextStyle(fontSize: 18)),
          const Text('Valor Total {aluguel}', style: TextStyle(fontSize: 18)),
          const SizedBox(height: 16),
          const Text('Data do Pagamento {cliente}', style: TextStyle(fontSize: 18)),
          const SizedBox(height: 16),
          BotaoCadastro(label: 'Registrar Devolução', onPressed: (){})
        ],
      ),
    );
  }
}
