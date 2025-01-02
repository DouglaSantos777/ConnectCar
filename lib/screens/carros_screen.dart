import 'package:connectcar/theme/theme_provider.dart';
import 'package:connectcar/widgets/carros_widgets/secao_carros_alug.dart';
import 'package:connectcar/widgets/carros_widgets/secao_carros_disp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CarrosScreen extends ConsumerWidget { 
  const CarrosScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) { 
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carros'),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_6), 
            onPressed: () {
              ref.read(themeProvider.notifier).toggleTheme(); 
            },
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              SecaoCarrosDisponiveis(),
              SecaoCarrosAlugados(),
            ],
          ),
        ),
      ),
    );
  }
}
