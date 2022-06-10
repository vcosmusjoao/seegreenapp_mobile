import 'package:app022/details/details_agricultores.dart';
import 'package:app022/model/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import '../details/details_empresa.dart';

class AgricultoresListView extends StatefulWidget {
  @override
  _AgricultoresListViewState createState() => _AgricultoresListViewState();
}

class _AgricultoresListViewState extends State<AgricultoresListView> {
  List<Agricultores> agricultores = List<Agricultores>.empty();
  _AgricultoresListViewState() {
    API.getAllAgricultores().then((response) {
      setState(() {
        Iterable lista = json.decode(response.body);
        agricultores =
            lista.map((model) => Agricultores.fromJson(model)).toList();
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
        itemCount: agricultores.length,
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
              agricultores[index].nome,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (context) =>
                      DetailPageAgricultor(agricultores[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
