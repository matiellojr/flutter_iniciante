class CriarPessoaDto {
  String nome;
  int altura;
  double peso;

  CriarPessoaDto({
    required this.nome,
    required this.altura,
    required this.peso,
  });

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'altura': altura,
      'peso': peso,
    };
  }
}