import 'dart:convert';

class Pessoas {
  List<Pessoa> pessoas;

  Pessoas({
    required this.pessoas,
  });

  factory Pessoas.fromJson(String str) => Pessoas.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Pessoas.fromMap(Map<String, dynamic> json) => Pessoas(
        pessoas:
            List<Pessoa>.from(json["pessoas"].map((x) => Pessoa.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "pessoas": List<dynamic>.from(pessoas.map((x) => x.toMap())),
      };
}

class Pessoa {
  String nome;
  String imagem;

  Pessoa({
    required this.nome,
    required this.imagem,
  });

  factory Pessoa.fromJson(String str) => Pessoa.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Pessoa.fromMap(Map<String, dynamic> json) => Pessoa(
        nome: json["nome"],
        imagem: json["imagem"],
      );

  Map<String, dynamic> toMap() => {
        "nome": nome,
        "imagem": imagem,
      };
}
