import 'package:desenvolvimento_flutter_iniciante/models/pessoa.dart';
import 'package:flutter/material.dart';

class PessoaListTitle extends StatelessWidget {
  final Pessoa pessoa;  
  const PessoaListTitle({
    super.key, 
    required this.pessoa,
  });

  @override
  Widget build(BuildContext context) {
    return Card( 
      color: Colors.blueAccent,
      child: ListTile(
        leading: Text("Id: ${pessoa.id}"),
        title: Text(pessoa.nome),
        subtitle: Text("Peso: ${pessoa.peso} kg"),
        trailing: Text("Altura: ${pessoa.altura} cm"),
      ),
    );
  }
}