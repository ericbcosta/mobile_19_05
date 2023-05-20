import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista')),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                // height: 24,
                // width: 24,
                child: Image.asset('assets/Lista.png'),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: GridView.count(
                  scrollDirection: Axis.vertical,
                  crossAxisCount: 2,
                  children: [
                    Container(
                      child: Column(
                        children: [Text('Nome:'), Text('CarlosEric')],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text('Email:'),
                          Text('CarlosEric@gmail.com')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
