import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import '../details/details_empresa.dart';
import '../model/model.dart';

class EmpresaListView extends StatefulWidget {
  @override
  _EmpresaListViewState createState() => _EmpresaListViewState();
}

class _EmpresaListViewState extends State<EmpresaListView> {
  List<Empresa> empresas = List<Empresa>.empty();

  _MoviesListViewState() {
    API.getAllEmpresas().then((response) {
      setState(() {
        Iterable lista = json.decode(response.body); // Usamos um iterator
        empresas = lista.map((model) => Empresa.fromJson(model)).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("See Green"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 153, 187, 112),
      ),
      body: ListView.builder(
        itemCount: empresas.length,
        itemBuilder: (context, index) {
          return ListTile(
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
