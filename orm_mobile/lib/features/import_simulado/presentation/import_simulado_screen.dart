import 'package:flutter/material.dart';

class ImportSimuladoScreen extends StatelessWidget {
  const ImportSimuladoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Importar simulado')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SizedBox(height: 20),
          Icon(Icons.file_open_outlined, size: 56, color: Theme.of(context).colorScheme.primary),
          const SizedBox(height: 16),
          Text('Selecione o arquivo JSON',
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center),
          const SizedBox(height: 8),
          const Text('Escolha o arquivo exportado pelo ORM Gabarito. O conteúdo será validado antes de ser salvo.',
              textAlign: TextAlign.center),
          const SizedBox(height: 24),
          FilledButton.icon(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('A seleção de arquivos será implementada nesta etapa.')),
              );
            },
            icon: const Icon(Icons.folder_open),
            label: const Text('Selecionar arquivo'),
          ),
          const SizedBox(height: 16),
          const Card(child: ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('O que será importado?'),
            subtitle: Text('Dados do simulado, alunos, códigos de identificação, questões e gabarito.'),
          )),
        ],
      ),
    );
  }
}
