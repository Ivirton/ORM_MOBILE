import 'package:flutter/material.dart';

class ImagesScreen extends StatelessWidget {
  const ImagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Imagens dos cartões')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Icon(Icons.photo_library_outlined, size: 56),
            SizedBox(height: 16),
            Text('Nenhuma imagem salva'),
            SizedBox(height: 8),
            Text('As fotos originais dos cartões aparecerão aqui.',
                textAlign: TextAlign.center),
          ]),
        ),
      ),
    );
  }
}
