import 'package:app022/model/model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_linkify/flutter_linkify.dart';

// Uma página para mostrar os detalhes de cada filme. Passamos o objeto
// do filme como parâmetro no constructor
class DetailPage extends StatelessWidget {
  final Empresa empresa;
  final _avaliacao = TextEditingController();

  DetailPage(this.empresa);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(empresa.nome),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 153, 187, 112),
      ),
      body: Container(
        padding: new EdgeInsets.all(10.0),
        child: Column(
          children: [
            Center(
              child: Image.network(empresa.foto),
            ),
            Text(empresa.cnpj),
            Text(empresa.descricao),
            Form(
              child: TextFormField(
                controller: _avaliacao,
                style: TextStyle(fontSize: 22),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Avalie a Empresa',
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
            Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(top: 24),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      // ignore: unnecessary_new
                      new MaterialPageRoute(
                        builder: (context) => Agricultores(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.check),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Text('Agricultores',
                            style: TextStyle(fontSize: 20)),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
