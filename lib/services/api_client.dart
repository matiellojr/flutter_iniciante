import 'package:desenvolvimento_flutter_iniciante/models/criar_pessoa_dto.dart';
import 'package:desenvolvimento_flutter_iniciante/models/pessoa.dart';
import 'package:dio/dio.dart';

class ApiClient {
  final Dio dio = Dio();

  Future<List<Pessoa>> get() async{
    final request = await dio.get("http://localhost:3000/pessoas");

    if (request.statusCode == 200) {
      final data = request.data;

      final pessoasJson = data as List;

      return pessoasJson
        .map((pessoaJson) => Pessoa.fromjson(pessoaJson))
      .toList();
    }
    
    throw Exception("Status Code invalido - Erro ao buscar pessoas");
  }

  Future<Pessoa> post(CriarPessoaDto criarPessoa) async {
    final request = await dio.post(
      "http://localhost:3000/pessoas",
      data: criarPessoa.toJson(),
    );

    if (request.statusCode == 201) {
      return Pessoa.fromjson(request.data);
    }
    throw Exception("Status code inválido - Erro ao criar pessoa");
  }

  Future<void> delete(Pessoa pessoa) async {
    final request = await dio.delete("http://localhost:3000/pessoas/${pessoa.id}");

    if (request.statusCode != 200) {
      throw Exception("Status code inválido - Erro ao deletar pessoa");
    }
  }
  
  Future<Pessoa> put(Pessoa pessoa) async {
    final request = await dio.put(
      "http://localhost:3000/pessoas/${pessoa.id}",
      data: pessoa.toJson(),
    );

    if (request.statusCode == 200) {
      return Pessoa.fromjson(request.data);
    }
    throw Exception("Status code inválido - Erro ao atualizar pessoa");    
  }
}


// Map<String, dynamic> pessoaJson = {
//   "id": "b345",
//   "nome": "Junior",
//   "altura": 165,
//   "peso": 64
// };

// final List<Map<String, dynamic>> lista = [pessoaJson];

