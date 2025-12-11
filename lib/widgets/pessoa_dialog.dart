
import 'package:desenvolvimento_flutter_iniciante/extensions/extensions.dart';
import 'package:desenvolvimento_flutter_iniciante/models/pessoa.dart';
import 'package:desenvolvimento_flutter_iniciante/widgets/default_dialog_container.dart';
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
      actions: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
            ElevatedButton(onPressed: () {
              Navigator.of(context).pop();
            }, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green ,
              ),
              child: Text(
                "Visualizar",
                style: TextStyle(color: Colors.black)
              )
            ),
            ElevatedButton(onPressed: () {
              Navigator.of(context).pop();
            }, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: Text(
                "Fechar",
                style: TextStyle(color: Colors.black)
              )
            ),
          ],
        ),
      ],
      content: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Informações do Usuário",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            DefaultDialogContainer(
              child: Text("Id: ${pessoa.id}")
            ),
            DefaultDialogContainer(
              child: Text("Nome: ${pessoa.nome}")
            ),
            DefaultDialogContainer(
               child: Text("Peso: ${pessoa.peso.paraPeso()}"),
            ),
            DefaultDialogContainer(
              child: Text("Altura: ${pessoa.altura.paraAltura()}")
            ),           
          ],
        ),
      ),
    
    );
  }
}