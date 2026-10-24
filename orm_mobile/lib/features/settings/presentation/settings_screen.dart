import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Configurações')),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.assignment_outlined),
            title: Text('Simulado atual'),
            subtitle: Text('Nenhum simulado importado'),
          ),
          Divider(height: 1),
          ListTile(
            leading: Icon(Icons.folder_outlined),
            title: Text('Armazenamento'),
            subtitle: Text('Arquivos mantidos no dispositivo'),
          ),
          Divider(height: 1),
          ListTile(
            leading: Icon(Icons.language_outlined),
            title: Text('Idioma'),
            subtitle: Text('Português (Brasil)'),
          ),
          Divider(height: 1),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('Sobre o aplicativo'),
            subtitle: Text('ORM Gabarito • Android'),
          ),
        ],
      ),
    );
  }
}
