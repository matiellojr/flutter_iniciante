import 'package:desenvolvimento_flutter_iniciante/models/criar_pessoa_dto.dart';
import 'package:desenvolvimento_flutter_iniciante/models/pessoa.dart';
import 'package:dio/dio.dart';

class ApiClient {
  final Dio dio = Dio();

  Future<List<Pessoa>> get() async{
    final request = await dio.get("http://192.168.3.115:3000/pessoas");

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
}


// Map<String, dynamic> pessoaJson = {
//   "id": "b345",
//   "nome": "Junior",
//   "altura": 165,
//   "peso": 64
// };

// final List<Map<String, dynamic>> lista = [pessoaJson];

