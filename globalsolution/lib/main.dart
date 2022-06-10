import 'package:app022/page/home_page.dart';
import 'package:flutter/material.dart';
import 'page/empresa_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  build(context) {
    return MaterialApp(
      title: 'See Green App',
      home: HomePage(),
    );
  }
}
