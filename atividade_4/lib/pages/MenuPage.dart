import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text("Menu"),
        ),
        body: GridView.count(
          scrollDirection: Axis.vertical,
          crossAxisCount: 1,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Lista');
              },
              child: Container(
                child: Column(
                  children: [
                    Image(
                      image: AssetImage('assets/Lista.png'),
                    ),
                    Text("Lista de usuários")
                  ],
                ),
              ),
            )
          ],
        ),
      );
  }
}