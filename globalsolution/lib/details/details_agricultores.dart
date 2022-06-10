import 'package:app022/model/model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_linkify/flutter_linkify.dart';

class DetailPageAgricultor extends StatelessWidget {
  final Agricultores agricultores;
  final _avaliacao = TextEditingController();

  DetailPageAgricultor(this.agricultores);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(agricultores.nome),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 153, 187, 112),
      ),
      body: Container(
        padding: new EdgeInsets.all(10.0),
        child: Column(
          children: [
            Center(
              child: Image.network(agricultores.foto),
            ),
            Text(agricultores.descricao),
            Form(
              child: TextFormField(
                controller: _avaliacao,
                style: TextStyle(fontSize: 22),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Avalie o Agricultor',
                  prefixIcon: Icon(Icons.star),
                ),
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Digite sua avaliação';
                  }
                },
              ),
            ),
            Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(top: 24),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.check),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Text('Avaliar', style: TextStyle(fontSize: 20)),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
