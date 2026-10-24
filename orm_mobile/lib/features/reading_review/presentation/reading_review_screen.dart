import 'package:flutter/material.dart';

class ReadingReviewScreen extends StatelessWidget {
  const ReadingReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Confirmar leitura')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Card(child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.person_outline)),
            title: Text('Aluno não identificado'),
            subtitle: Text('O QR Code será lido pela câmera'),
          )),
          const SizedBox(height: 20),
          Text('Respostas reconhecidas', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 8),
          const Card(child: Padding(
            padding: EdgeInsets.all(16),
            child: Text('As respostas identificadas serão exibidas aqui para conferência. Questões duvidosas devem ser revisadas antes de salvar.'),
          )),
          const SizedBox(height: 20),
          FilledButton(
            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('A persistência do resultado será implementada.')),
            ),
            child: const Text('Confirmar e salvar'),
          ),
          const SizedBox(height: 10),
          OutlinedButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Tentar novamente'),
          ),
        ],
      ),
    );
  }
}
