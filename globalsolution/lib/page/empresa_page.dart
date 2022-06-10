import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import '../details/details.dart';
import '../model/model.dart';

// Vamos precisar de uma aplicação com estado
class EmpresaListView extends StatefulWidget {
  @override
  _EmpresaListViewState createState() => _EmpresaListViewState();
}

class _EmpresaListViewState extends State<EmpresaListView> {
  List<Empresa> empresas = List<Empresa>.empty(); // Lista dos filmes

  // Construtor, atualiza com setState a lista de filmes.
  _MoviesListViewState() {
    API.getAllEmpresas().then((response) {
      setState(() {
        Iterable lista = json.decode(response.body); // Usamos um iterator
        empresas = lista.map((model) => Empresa.fromJson(model)).toList();
      });
    });
  }

  // Método build sobrecarregado que vai construir nossa página
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("See Green"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 153, 187, 112),
      ),
      // Aqui vem nossa lista
      body: ListView.builder(
        itemCount: empresas.length, // quantidade de elementos
        // Os elementos da lista
        itemBuilder: (context, index) {
          // Vai ser um item de lista tipo ListTile
          return ListTile(
            // Uma imagem de avatar redondinho com a imagem do filme
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 44,
                minHeight: 44,
                maxWidth: 64,
                maxHeight: 64,
              ),
            ),
            title: Text(
              empresas[index].nome,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
            onTap: () {
              // Abrimos uma nova página, outra classe, que está no arquivo
              // detail.dart. Veja que é um MaterialPageRote, tipo o
              // MaterialApp, só que é só uma página nova.
              Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (context) => DetailPage(empresas[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
