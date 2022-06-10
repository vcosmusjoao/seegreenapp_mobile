import 'package:http/http.dart' as http;

const empresaUrl = "http://localhost:8000/api/empresas";
const agricultoresUrl = "http://localhost:8000/api/agricultores";

class API {
  static Future getAllEmpresas() async {
    var url = empresaUrl;
    return await http.get(Uri.parse(url));
  }

  static Future getAllAgricultores() async {
    var url = agricultoresUrl;
    return await http.get(Uri.parse(url));
  }
}

class Empresa {
  late int id;
  late String nome;
  late String cnpj;
  late String descricao;
  late String createdAt;
  late String updatedAt;
  late String foto;

  Empresa(int id, String nome, String cnpj, String descricao, String createdAt,
      String updatedAt, String foto) {
    this.id = id;
    this.nome = nome;
    this.cnpj = cnpj;
    this.descricao = descricao;
    this.createdAt = createdAt;
    this.updatedAt = updatedAt;
    this.foto = foto;
  }

  Empresa.fromJson(Map json)
      : id = json['id'],
        nome = json['nome'],
        cnpj = json['cnpj'],
        descricao = json['descricao'],
        createdAt = json['created_at'],
        updatedAt = json['updated_at'],
        foto = json['foto'];
}

class Agricultores {
  late int id;
  late String nome;
  late String descricao;
  late String createdAt;
  late String updatedAt;
  late String foto;

  Agricultores(int id, String nome, String descricao, String createdAt,
      String updatedAt, String foto) {
    this.id = id;
    this.nome = nome;
    this.createdAt = createdAt;
    this.updatedAt = updatedAt;
    this.foto = foto;
  }

  Agricultores.fromJson(Map json)
      : id = json['id'],
        nome = json['nome'],
        descricao = json['descricao'],
        createdAt = json['created_at'],
        updatedAt = json['updated_at'],
        foto = json['foto'];
}
