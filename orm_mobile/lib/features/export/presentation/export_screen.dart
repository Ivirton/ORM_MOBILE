import 'package:flutter/material.dart';

class ExportScreen extends StatelessWidget {
  const ExportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exportar dados')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(child: ListTile(
            leading: const Icon(Icons.data_object),
            title: const Text('Exportar resultados JSON'),
            subtitle: const Text('Arquivo compatível com a importação do sistema web.'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => _showPending(context),
          )),
          const SizedBox(height: 12),
          Card(child: ListTile(
            leading: const Icon(Icons.photo_library_outlined),
            title: const Text('Exportar imagens'),
            subtitle: const Text('Agrupar as fotografias em um arquivo ZIP.'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => _showPending(context),
          )),
          const SizedBox(height: 20),
          const Text('Os arquivos serão gerados separadamente para facilitar a transferência ao sistema web.'),
        ],
      ),
    );
  }

  void _showPending(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('A exportação será implementada nesta etapa.')),
    );
  }
}
