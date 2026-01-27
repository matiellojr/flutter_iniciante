class Pessoa {
  final String id;
  final String nome;
  final int altura; // em centímetros 
  final double peso; // em quilogramas

  const Pessoa({
    required this.id,
    required this.nome,
    required this.altura,
    required this.peso,
  });

  factory Pessoa.fromjson(Map<String, dynamic> json) {
    return Pessoa(
      id: json["id"],
      nome: json["nome"],
      altura: json["altura"],
      peso: json["peso"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nome': nome,
      'altura': altura,
      'peso': peso,
    };
  }
}




      