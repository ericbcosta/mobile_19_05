import 'package:atividade_4/pages/InitialPage.dart';
import 'package:atividade_4/pages/ListPage.dart';
import 'package:atividade_4/pages/LoginPage.dart';
import 'package:atividade_4/pages/MenuPage.dart';
import 'package:atividade_4/pages/RegisterPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => InitialPage(),
        '/Login':(context) => LoginPage(),
        '/Cadastro':(context) => RegisterPage(),
        '/Menu':(context) => MenuPage(),
        '/Lista':(context) => ListPage()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
