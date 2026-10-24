import 'package:flutter/material.dart';
import '../../import_simulado/presentation/import_simulado_screen.dart';
import '../../scanner/presentation/scanner_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ORM Gabarito'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Row(children: [
                  Icon(Icons.assignment_outlined),
                  SizedBox(width: 8),
                  Text('Simulado atual'),
                ]),
                const SizedBox(height: 12),
                Text('Nenhum simulado importado',
                    style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 6),
                const Text('Importe o JSON exportado pelo sistema web para começar.'),
                const SizedBox(height: 16),
                OutlinedButton.icon(
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const ImportSimuladoScreen()),
                  ),
                  icon: const Icon(Icons.file_open_outlined),
                  label: const Text('Importar simulado'),
                ),
              ]),
            ),
          ),
          const SizedBox(height: 20),
          Text('Resumo da leitura', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 12),
          const Row(children: [
            Expanded(child: _MetricCard(label: 'Processados', value: '0', icon: Icons.check_circle_outline)),
            SizedBox(width: 10),
            Expanded(child: _MetricCard(label: 'Pendentes', value: '0', icon: Icons.pending_outlined)),
          ]),
          const SizedBox(height: 10),
          const Row(children: [
            Expanded(child: _MetricCard(label: 'Erros', value: '0', icon: Icons.error_outline)),
            SizedBox(width: 10),
            Expanded(child: _MetricCard(label: 'Revisar', value: '0', icon: Icons.visibility_outlined)),
          ]),
          const SizedBox(height: 22),
          FilledButton.icon(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const ScannerScreen()),
            ),
            icon: const Icon(Icons.document_scanner_outlined),
            label: const Text('Iniciar leitura'),
          ),
        ],
      ),
    );
  }
}

class _MetricCard extends StatelessWidget {
  const _MetricCard({required this.label, required this.value, required this.icon});
  final String label;
  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) => Card(
    child: Padding(
      padding: const EdgeInsets.all(14),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Icon(icon, color: Theme.of(context).colorScheme.primary),
        const SizedBox(height: 12),
        Text(value, style: Theme.of(context).textTheme.headlineSmall),
        Text(label, style: Theme.of(context).textTheme.bodySmall),
      ]),
    ),
  );
}
