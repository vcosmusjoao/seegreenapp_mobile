import 'package:app022/model/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import '../details/details.dart';

// Vamos precisar de uma aplicação com estado
class AgricultoresListView extends StatefulWidget {
  @override
  _AgricultoresListViewState createState() => _AgricultoresListViewState();
}

class _AgricultoresListViewState extends State<AgricultoresListView> {
  List<Agricultores> agricultores =
      List<Agricultores>.empty(); // Lista dos filmes

  // Construtor, atualiza com setState a lista de filmes.
  _AgricultoresListViewState() {
    API.getAllAgricultores().then((response) {
      setState(() {
        Iterable lista = json.decode(response.body); // Usamos um iterator
        agricultores =
            lista.map((model) => Agricultores.fromJson(model)).toList();
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
        itemCount: agricultores.length, // quantidade de elementos
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
              agricultores[index].nome,
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
                  builder: (context) => DetailPage(agricultores[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
