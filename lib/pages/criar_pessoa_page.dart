import 'package:flutter/material.dart';

class CriarPessoaPage extends StatefulWidget {
  const CriarPessoaPage({super.key});

  @override
  State<CriarPessoaPage> createState() => _CriarPessoaPageState();
}

class _CriarPessoaPageState extends State<CriarPessoaPage> {
  final gap = SizedBox(height: 16);
  final nomeController = TextEditingController();
  final pesoController = TextEditingController() ;
  final alturaController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nova Página'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                autovalidateMode: AutovalidateMode.always,
                validator: (value) {
                  if (value?.isEmpty == true) {
                    return 'Por favor, insira um nome.';
                  }
                  final nomeCompleto = value!.split(' ');
                  if (nomeCompleto.length < 2) {
                    return 'Por favor, insira o nome completo.';
                  } 
                  return null;
                },
                controller: nomeController,
                decoration: InputDecoration(
                  label: Text('Nome Completo'),
                  border: OutlineInputBorder()
                ),
              ),
              gap,
              TextFormField(
                autovalidateMode: AutovalidateMode.always,
                validator: (value) {
                  if (value?.isEmpty == true) {
                    return 'Por favor, insira um peso.';
                  }
                  return null;
                },
                controller: pesoController,
                decoration: InputDecoration(
                  label: Text('Peso'),
                  border: OutlineInputBorder()
                ),
              ),
              gap,
              TextFormField(
                autovalidateMode: AutovalidateMode.always,
                validator: (value) {
                  if (value?.isEmpty == true) {
                    return 'Por favor, insira uma altura.';
                  }
                  return null;
                },
                controller: alturaController,
                decoration: InputDecoration(
                  label: Text('Altura (cm)'),
                  border: OutlineInputBorder()
                ),
              ),
              gap,
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState?.validate() == true) {
                          final criarPessoa = {
                            'nome': nomeController.text,
                            'altura': int.parse(alturaController.text),
                            'peso': double.parse(pesoController.text),
                          };
                        }
                      }, 
                      child: Text('Salvar')
                    ),
                  ),
                ],
              )
          
            ],
          ),
        ),
      ),
    );
  }
}