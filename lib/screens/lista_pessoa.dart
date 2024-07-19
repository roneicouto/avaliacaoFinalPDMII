import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/components/card_pessoas.dart';

class ListaPessoa extends StatefulWidget {
  const ListaPessoa({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ListaPessoaState createState() => _ListaPessoaState();
}

class _ListaPessoaState extends State<ListaPessoa> {
  List _pessoas = [];

  Future<void> _loadPessoas() async {
    final String response =
        await rootBundle.loadString('lib/data/pessoas.json');
    final data = await json.decode(response);
    setState(() {
      debugPrint("tentanedo ler...");
      _pessoas = data["pessoas"];
      debugPrint("pessoas: $_pessoas");
      debugPrint("...quantidade de pessoas>: ${_pessoas.length}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Pessoas'),
      ),
      body: Center(
        child: Column(
          children: [
            _pessoas.isNotEmpty
                ? Expanded(
                    child: ListView.builder(
                      itemCount: _pessoas.length,
                      itemBuilder: (context, index) {
                        return CardPessoas(
                            valueKey: _pessoas[index]["nome"],
                            nome: _pessoas[index]["nome"],
                            imagem: _pessoas[index]["imagem"]);
                      },
                    ),
                  )
                : ElevatedButton(
                    onPressed: () {
                      _loadPessoas();
                    },
                    child: const Text('Carregar Pessoas'),
                  ),
          ],
        ),
      ),
    );
  }
}
