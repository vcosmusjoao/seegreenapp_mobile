import 'package:flutter/material.dart';

class RankingAgricultor extends StatelessWidget {
  Container Ranking(String titulo, String info) {
    return Container(
      width: 160.0,
      child: Card(
        child: Wrap(
          children: <Widget>[
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
              Ranking("Jose", "Agritech"),
              Ranking("Maria", "VerdeCasa"),
              Ranking("Carlos Andrade", "XPTO"),
              Ranking("Josiana", "Coração Mineiro Agricultores"),
              Ranking("Caio", "TratAlg"),
            ],
          ),
        ),
      ),
    );
  }
}
