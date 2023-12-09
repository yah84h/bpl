import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './import/u_import.dart';

void main() {
  runApp(ChangeNotifierProvider<ProviderProgLang>(
    create: (context) => ProviderProgLang(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ViewHome(),
    );
  }
}
