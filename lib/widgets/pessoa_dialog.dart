
import 'package:desenvolvimento_flutter_iniciante/extensions/extensions.dart';
import 'package:desenvolvimento_flutter_iniciante/models/pessoa.dart';
import 'package:flutter/material.dart';

class PessoaDialog extends StatelessWidget {
  final Pessoa pessoa;
  const PessoaDialog({
    super.key,
    required this.pessoa,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Id: ${pessoa.id}"),
            Text("Nome: ${pessoa.nome}"),
            Text("Peso: ${pessoa.peso.paraPeso()}"),
            Text("Altura: ${pessoa.altura.paraAltura()}"),
          ],
        ),
      ),
    
    );
  }
}