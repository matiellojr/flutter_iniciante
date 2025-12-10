import 'package:desenvolvimento_flutter_iniciante/models/pessoa.dart';
import 'package:desenvolvimento_flutter_iniciante/widgets/custom_tile.dart';
import 'package:flutter/material.dart';

class CustomPersonTile extends StatelessWidget {
  final Pessoa pessoa;
  const CustomPersonTile({
    super.key, 
    required this.pessoa
  });

  @override
  Widget build(BuildContext context) {
    return CustomTile(
      color: Colors.blueAccent,
      leading: Text("Id: ${pessoa.id}"),
      title: Text(
        pessoa.nome, 
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      subTitle: Text("Peso: ${pessoa.peso.toStringAsFixed(2)} kg"),
      trailing: Text("Altura: ${pessoa.altura} cm"),
    );
  }
}