import 'package:desenvolvimento_flutter_iniciante/mock/gerar_pessoas.dart';
import 'package:desenvolvimento_flutter_iniciante/widgets/custom_person_tile.dart';
import 'package:desenvolvimento_flutter_iniciante/widgets/pessoa_listtitle.dart';
import 'package:flutter/material.dart';

class ListaPessoa extends StatelessWidget {
  const ListaPessoa({super.key});

  @override
  Widget build(BuildContext context) {
    final pessoas = gerarPessoas(20);

    return ListView.builder(
      itemCount: pessoas.length,
      itemBuilder: (context, index) {
        return CustomPersonTile(pessoa: pessoas[index]);
      },    
    );
  }
}