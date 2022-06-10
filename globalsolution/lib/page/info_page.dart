import 'package:app022/page/agricultores_page.dart';
import 'package:app022/page/empresa_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  static final String title = 'Card Example';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.green),
        home: MainPage(),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: Color.fromARGB(255, 223, 163, 94),
        ),
        body: ListView(
          padding: EdgeInsets.all(16),
          children: [
            buildRoundedCard(),
            buildImageInteractionCard(),
            buildImageInteractionCard1(),
            buildImageInteractionCard2(),
            buildRoundedCard2(),
          ],
        ),
      );

  Widget buildRoundedCard() => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bem-vindo(a),Josefe!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Aqui você consegue consultar todo o processo de criação de peças das suas lojas favoritos!!',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      );

  Widget buildImageInteractionCard() => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Ink.image(
                  image: NetworkImage(
                    'https://i.ibb.co/Mpnk6bs/image-15.png',
                  ),
                  height: 240,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 16,
                  right: 16,
                  left: 16,
                  child: Text(
                    'Você',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16).copyWith(bottom: 0),
              child: Text(
                'As novas gerações de consumidores que estão vindo não querem apenas um bom produto ou uma boa experiência, eles querem tudo isso e ainda saber que estão fazendo algo bom para o meio ambiente. Ao utilizar o App o Usuário vai ter mais confiança em suas compras.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.start,
            )
          ],
        ),
      );

  Widget buildImageInteractionCard1() => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Ink.image(
                  image: NetworkImage(
                    'https://i.ibb.co/Jn65YQn/image-16.png',
                  ),
                  height: 240,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 16,
                  right: 16,
                  left: 16,
                  child: Text(
                    'Empresas',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16).copyWith(bottom: 0),
              child: Text(
                'São inúmeros trabalhos externos que fazem uma empresa funcionar, em grandes Companias de Fashion, você encontra o vestido confeccionado, mas de onde vem aquele tecido? de onde vem o couro dessa bota? Essas e outras questões são importantes que o consumidor tenha ciência antes de fazer escolhas, além de passar confiança para o consumidor final, passando credibilidade para as empresas',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.start,
            )
          ],
        ),
      );

  Widget buildImageInteractionCard2() => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Ink.image(
                  image: NetworkImage(
                    'https://i.ibb.co/Wt6qWsq/Sem-T-tulo-1-33-1280x720.jpg',
                  ),
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 16,
                  right: 16,
                  left: 16,
                  child: Text(
                    'Agricultores',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16).copyWith(bottom: 0),
              child: Text(
                'Outras empresas podem conhecer o trabalho de Agricultores, consumidores também, trazendo mais conhecimento para essas pessoas que fazem muito por toda sociedade, mas pouco são reconhecidas',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.start,
            )
          ],
        ),
      );

  Widget buildRoundedCard2() => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Empresas e Agricultores',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Trazendo CREDIBILIDADE para Empresas, CONFIABILIDADE para Usuários e VISIBILIDADE para Agricultores',
                style: TextStyle(fontSize: 16),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: [
                  FlatButton(
                    child: Text('Verificar Empresas'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EmpresaListView()),
                      );
                    },
                  ),
                ],
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: [
                  FlatButton(
                    child: Text('Verificar Agricultores'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AgricultoresListView()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
