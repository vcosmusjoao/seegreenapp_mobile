import 'package:flutter/material.dart';

class RankingAgricultor extends StatelessWidget {
  Container MyItems(String image, String titulo, String info) {
    return Container(
      width: 160.0,
      child: Card(
        child: Wrap(
          children: <Widget>[
            Image.network(image, fit: BoxFit.fill),
            ListTile(
              title: Text(titulo),
              subtitle: Text(info),
            ),
          ],
        ),
      ),
    ); //First Card
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text(
            "Ranking Agricultores",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              MyItems(
                  "https://cdn.brasildefato.com.br/media/1192b89e4470f097060af649fa65232e.jpeg",
                  "Jose",
                  "Agritech"),
              MyItems(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Woman-Farmer.jpg/640px-Woman-Farmer.jpg",
                  "Maria",
                  "VerdeCasa"),
              MyItems(
                  "https://muzambinho.com.br/wp-content/uploads/2018/07/Sem-T%C3%ADtulo-1-33-1280x720.jpg",
                  "Carlos Andrade",
                  "XPTO"),
              MyItems(
                  "https://www.foodconnection.com.br/sites/foodconnection.com/files/Cabe%20%20indstria%20capacitar%20os%20agricultores%20parceiros%20nas%20prticas%20ESG.png",
                  "Josiana",
                  "Coração Mineiro Agricultores"),
              MyItems(
                  "https://img.freepik.com/fotos-gratis/um-agricultor-que-esta-usando-uma-pa-para-cavar-o-solo-em-seus-campos-de-arroz_1150-17239.jpg?w=2000",
                  "Caio",
                  "TratAlg"),
            ],
          ),
        ),
      ),
    );
  }
}
