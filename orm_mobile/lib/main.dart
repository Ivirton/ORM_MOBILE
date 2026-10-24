import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'features/home/presentation/home_shell.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const OrmGabaritoApp());
}

class OrmGabaritoApp extends StatelessWidget {
  const OrmGabaritoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ORM Gabarito',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      home: const HomeShell(),
    );
  }
}
