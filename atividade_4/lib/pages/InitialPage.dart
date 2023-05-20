
import 'package:flutter/material.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          
        ),
        body: GridView.count(
          scrollDirection: Axis.vertical,
          crossAxisCount: 1,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Login');
              },
              child: Container(
                child: Column(
                  children: [
                    Image(
                      image: AssetImage('assets/Login.png'),
                    ),
                    Text("Login")
                  ],
                ),
              ),
            ),

            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Cadastro');
              },
              child: Container(
                child: Column(
                  children: [
                    Image(
                      image: AssetImage('assets/Cadastro.png'),
                    ),
                    Text("Cadastrar")
                  ],
                ),
              ),
            )
          ],
        ),
      );
  }
}