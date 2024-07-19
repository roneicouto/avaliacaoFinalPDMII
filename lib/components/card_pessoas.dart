import 'package:flutter/material.dart';

class CardPessoas extends StatelessWidget {
  final String nome;
  final String imagem;
  final String valueKey;

  const CardPessoas({
    super.key,
    required this.valueKey,
    required this.nome,
    required this.imagem,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      key: ValueKey(valueKey),
      child: ListTile(
        title: Text(nome),
        leading: CircleAvatar(
          backgroundImage: AssetImage(imagem),
        ),
      ),
    );
  }
}
