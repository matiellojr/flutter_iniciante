import 'package:desenvolvimento_flutter_iniciante/models/criar_pessoa_dto.dart';
import 'package:desenvolvimento_flutter_iniciante/models/pessoa.dart';
import 'package:desenvolvimento_flutter_iniciante/services/api_client.dart';
import 'package:desenvolvimento_flutter_iniciante/states/messages_states.dart';
import 'package:flutter/material.dart';

class PessoaController extends ChangeNotifier{
  List<Pessoa> _pessoas = [];
  List<Pessoa> get pessoas => _pessoas;

  final ApiClient apiClient;

  ValueNotifier<MessagesStates> mensagemNotifier = ValueNotifier(IddleMessage());

  bool _loading = false;

  PessoaController({required this.apiClient});

  bool get loading => _loading;

  void listarPessoas() async {
    _loading = true;
    notifyListeners();
    try {
      // await Future.delayed(const Duration(seconds: 2)); // Simula tempo de carregamento
      final pessoasApi = await apiClient.get();
      _pessoas = pessoasApi;
      mensagemNotifier.value = SuccessMessage(message: "Pessoas carregadas com sucesso.");
      notifyListeners();
    } on Exception catch (_) {
      mensagemNotifier.value = ErrorMessage(message: "Ocorreu um erro ao carregar as pessoas.");
    } finally {
      _loading = false;
      notifyListeners();
    }
  }

  Future<void> adicionarPessoa(CriarPessoaDto criarPessoa) async{
    try {
      final pessoa = await apiClient.post(criarPessoa);
      pessoas.add(pessoa);
      mensagemNotifier.value = SuccessMessage(message: "Pessoa adicionada com sucesso.");
      notifyListeners();
    } on Exception catch (_) {
      mensagemNotifier.value = ErrorMessage(message: "Ocorreu um erro ao adicionar pessoa.");
    }
  }

  Future<void> atualizarPessoa(Pessoa criarPessoa) async{
    try {
      final pessoa = await apiClient.put(criarPessoa);

      final pessoaIndex = _pessoas.indexWhere((p) => p.id == pessoa.id);

      _pessoas[pessoaIndex] = pessoa;

      mensagemNotifier.value = SuccessMessage(message: "Pessoa atualizada com sucesso.");
    } on Exception catch (_) {
      mensagemNotifier.value = ErrorMessage(message: "Ocorreu um erro ao atualizar pessoa.");
    } finally {
      notifyListeners();
    }
  }

  Future<void> removerPessoa(Pessoa pessoa) async {
    try {
      await apiClient.delete(pessoa);
      _pessoas.remove(pessoa);
      mensagemNotifier.value = SuccessMessage(message: "Pessoa removida com sucesso.");
    } on Exception catch (_) {
      mensagemNotifier.value = ErrorMessage(message: "Ocorreu um erro ao remover pessoa.");
    } finally {
      notifyListeners();
    }
  }

}