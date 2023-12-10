import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './utils/import/u_import.dart';

void main() {
  runApp(ChangeNotifierProvider<ProviderProgLang>(
    create: (context) => ProviderProgLang(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ViewHome(),
    );
  }
}
