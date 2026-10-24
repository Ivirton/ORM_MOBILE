import 'package:flutter/material.dart';

class ResultDetailScreen extends StatelessWidget {
  const ResultDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detalhe do resultado')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Card(child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.person_outline)),
            title: Text('Aluno'),
            subtitle: Text('Código de identificação'),
          )),
          SizedBox(height: 12),
          Row(children: [
            Expanded(child: _CountCard(label: 'Acertos', value: '—')),
            SizedBox(width: 8),
            Expanded(child: _CountCard(label: 'Erros', value: '—')),
          ]),
          SizedBox(height: 8),
          Row(children: [
            Expanded(child: _CountCard(label: 'Brancos', value: '—')),
            SizedBox(width: 8),
            Expanded(child: _CountCard(label: 'Duvidosas', value: '—')),
          ]),
          SizedBox(height: 20),
          Card(child: ListTile(
            leading: Icon(Icons.image_outlined),
            title: Text('Imagem do cartão'),
            subtitle: Text('A fotografia original será vinculada ao resultado.'),
          )),
        ],
      ),
    );
  }
}

class _CountCard extends StatelessWidget {
  const _CountCard({required this.label, required this.value});
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) => Card(
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(value, style: Theme.of(context).textTheme.headlineSmall),
        Text(label),
      ]),
    ),
  );
}
