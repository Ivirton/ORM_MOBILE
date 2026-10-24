import 'package:flutter/material.dart';
import '../../result_detail/presentation/result_detail_screen.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Resultados')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SegmentedButton<String>(
            segments: const [
              ButtonSegment(value: 'todos', label: Text('Todos')),
              ButtonSegment(value: 'processados', label: Text('Processados')),
              ButtonSegment(value: 'pendentes', label: Text('Pendentes')),
            ],
            selected: const {'todos'},
            onSelectionChanged: (_) {},
          ),
          const SizedBox(height: 16),
          Card(
            child: ListTile(
              leading: const CircleAvatar(child: Icon(Icons.person_outline)),
              title: const Text('Nenhum resultado'),
              subtitle: const Text('Os cartões processados aparecerão aqui.'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const ResultDetailScreen()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
