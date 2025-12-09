import 'dart:math';

import 'package:desenvolvimento_flutter_iniciante/models/pessoa.dart';
import 'package:faker/faker.dart';

List<Pessoa> gerarPessoas(int quantidade) {
  final faker = Faker();
  return List<Pessoa>.generate(
    quantidade, (index) => Pessoa(
      id: index + 1,
      nome: faker.person.name(),
      altura: Random().nextInt(240), // Altura entre 140 cm e 240 cm
      peso: faker.randomGenerator.decimal(min: 50, scale: 150), // Peso entre 50 kg e 200 kg'
    )
  );
}