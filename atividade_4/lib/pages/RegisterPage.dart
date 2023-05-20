import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  final _formKey = GlobalKey<FormState>();
  String nome = '';
  String email = '';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cadastro')),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Container(
                // height: 24,
                // width: 24,
                child: Image.asset('assets/Cadastro.png'),
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (_) => nome = _,
                      decoration: InputDecoration(
                          hintText: 'Digite seu Nome',
                          labelText: 'Nome',
                          border: OutlineInputBorder(),
                          enabledBorder: InputBorder.none),
                      validator: (_) {
                        if (_!.isEmpty) {
                          return 'Informe seu nome';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      onChanged: (_) => email = _,
                      decoration: InputDecoration(
                          hintText: 'Digite seu Email',
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                          enabledBorder: InputBorder.none),
                      validator: (_) {
                        if (_!.isEmpty) {
                          return 'Informe seu email';
                        }
                        return null;
                      },
                    ),
                    Container(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Digite sua Senha',
                          labelText: 'Senha',
                          border: OutlineInputBorder(),
                          enabledBorder: InputBorder.none),
                      validator: (_) {
                        if (_!.isEmpty) {
                          return 'Informe sua senha';
                        }
                        if (_.length < 4) {
                          return 'Senha muito curta';
                        }
                        return null;
                      },
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          final snackBar = SnackBar(
                            content: const Text('Enviado'),
                            action: SnackBarAction(
                              label: 'Fechar',
                              onPressed: () {},
                            ),
                          );
                          ScaffoldMessenger.of(context)
                              .showSnackBar(snackBar);
                              
                          // Navigator.pushNamed(context, '/Login');
                        }
                      },
                      child: Text('Enviar'),
                    ),
                    Container(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          Text(
                            '$nome' 
                          ),
                          Container(height: 20,),
                          Text(
                            '$email' 
                          ),
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
