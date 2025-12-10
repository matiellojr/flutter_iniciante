import 'package:desenvolvimento_flutter_iniciante/extensions/extensions.dart';
import 'package:desenvolvimento_flutter_iniciante/models/pessoa.dart';
import 'package:flutter/material.dart';

class PessoaListTitle extends StatefulWidget {
  final Pessoa pessoa;  
  const PessoaListTitle({
    super.key, 
    required this.pessoa,
  });

  @override
  State<PessoaListTitle> createState() => _PessoaListTitleState();
}

class _PessoaListTitleState extends State<PessoaListTitle> {
  @override
  void initState() {
    print("Iniciando pessoa: ${widget.pessoa.id}");
    super.initState();    
  }

  @override
  Widget build(BuildContext context) {
    return Card( 
      color: Colors.blueAccent,
      child: ListTile(
        leading: Text("Id: ${widget.pessoa.id}"),
        title: Text(widget.pessoa.nome),
        subtitle: Text("Peso: ${widget.pessoa.peso.paraPeso()}"),
        trailing: Text("Altura: ${widget.pessoa.altura.paraAltura()}"),
      ),
    );
  }

  @override
  void dispose() {
    print("Removendo pessoa: ${widget.pessoa.id}");
    super.dispose();    
  }
}

