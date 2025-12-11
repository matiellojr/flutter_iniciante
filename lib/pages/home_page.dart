import 'package:desenvolvimento_flutter_iniciante/extensions/extensions.dart';
import 'package:desenvolvimento_flutter_iniciante/pages/nova_pagina.dart';
import 'package:desenvolvimento_flutter_iniciante/routes/routes.dart';
import 'package:desenvolvimento_flutter_iniciante/widgets/lista_pessoas.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Meu primeiro App'),
        ),
        body: ListaPessoa(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.greenAccent,
          onPressed: () {
            context.pushNamed(Routes.novaPagina);

            // Navigator.of(context).pushNamed(Routes.novaPagina);

            // Navigator.of(context).pushAndRemoveUntil(
            //   MaterialPageRoute(
            //     builder: (context) {
            //       return NovaPagina();
            //     }                  
            //   ),
            //   (route) => false
            // );
          },
          child: Icon(Icons.navigate_next),
          ),
      );
  }
}