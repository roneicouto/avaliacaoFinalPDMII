import 'package:flutter/material.dart';
import 'package:myapp/screens/homepage.dart';
import 'package:myapp/screens/profile.dart';

import 'screens/lista_pessoa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 21, 40, 219)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Página Inicial do APP'),
      routes: {
        //'/home': (context) => const MyHomePage(title: 'Página Inicial do APP'),
        '/profile': (context) => const ProfilePage(title: 'Página de Perfil'),
        '/listaPessoa': (context) => const ListaPessoa(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
