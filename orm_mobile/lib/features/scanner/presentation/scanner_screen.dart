import 'package:flutter/material.dart';
import '../../reading_review/presentation/reading_review_screen.dart';

class ScannerScreen extends StatelessWidget {
  const ScannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scanner de cartões')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surfaceContainerHighest,
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(color: Theme.of(context).colorScheme.outlineVariant),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.document_scanner_outlined, size: 72),
                      SizedBox(height: 16),
                      Text('Área de captura da câmera'),
                      SizedBox(height: 8),
                      Text('A câmera e o reconhecimento OMR serão integrados aqui.'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              FilledButton.icon(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const ReadingReviewScreen()),
                ),
                icon: const Icon(Icons.camera_alt_outlined),
                label: const Text('Simular captura / continuar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
