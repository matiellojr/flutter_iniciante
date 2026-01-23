import 'package:desenvolvimento_flutter_iniciante/models/criar_pessoa_dto.dart';
import 'package:desenvolvimento_flutter_iniciante/models/pessoa.dart';
import 'package:desenvolvimento_flutter_iniciante/services/api_client.dart';
import 'package:desenvolvimento_flutter_iniciante/states/messages_states.dart';
import 'package:flutter/material.dart';

class PessoaController extends ChangeNotifier{
  List<Pessoa> _pessoas = [];
  List<Pessoa> get pessoas => _pessoas;

  final apiClient = ApiClient();

  ValueNotifier<MessagesStates> mensagemNotifier = ValueNotifier(IddleMessage());

  bool _loading = false;
  bool get loading => _loading;

  void listarPessoas() async {
    _loading = true;
    notifyListeners();
    try {
      final pessoasApi = await apiClient.get();
      _pessoas = pessoasApi;
      mensagemNotifier.value = SuccessMessage(message: "Pessoas carregadas com sucesso.");
      notifyListeners();
    } on Exception catch (error) {
      mensagemNotifier.value = ErrorMessage(message: "Ocorreu um erro ao carregar as pessoas.");
      // TODO: Tratamento da exceção
    } finally {
      _loading = false;
      notifyListeners();
    }
  }

  void adicionarPessoa(CriarPessoaDto criarPessoa) {
    try {
      final pessoa = Pessoa(
        id: (_pessoas.length + 1).toString(), 
        nome: criarPessoa.nome, 
        altura: criarPessoa.altura,
        peso: criarPessoa.peso
      );

      pessoas.add(pessoa);
      mensagemNotifier.value = SuccessMessage(message: "Pessoa adicionada com sucesso.");
      notifyListeners();
    } on Exception catch (error) {
      mensagemNotifier.value = ErrorMessage(message: "Ocorreu um erro ao adicionar pessoa.");
    }
  }

  void removerPessoa(Pessoa pessoa) {
    _pessoas.remove(pessoa);
    mensagemNotifier.value = SuccessMessage(message: "Pessoa removida com sucesso.");
    notifyListeners();
  }
}