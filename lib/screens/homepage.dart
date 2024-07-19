import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton.icon(
                  icon: const Icon(Icons.person),
                  label: const Text('Ir a página de perfil'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/profile');
                  }),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
              child: ElevatedButton.icon(
                  icon: const Icon(Icons.person),
                  label: const Text('Listar Pessoas'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/listaPessoa');
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
