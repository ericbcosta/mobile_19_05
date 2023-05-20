import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // height: 24,
              // width: 24,
              child: Image.asset('assets/Login.png'),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Digite seu Nome ou Email',
                        labelText: 'Nome / Email',
                        border: OutlineInputBorder(),
                        enabledBorder: InputBorder.none),
                    validator: (_) {
                      if (_!.isEmpty) {
                        return 'Informe seu nome ou email';
                      }
                      if (_ != 'CarlosEric') {
                        return 'Informe seu nome ou email';
                      }
                      return null;
                    },
                  ),
                  Container(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Digite sua Senha',
                        labelText: 'Senha',
                        border: OutlineInputBorder(),
                        enabledBorder: InputBorder.none),
                    validator: (_) {
                      if (_!.isEmpty) {
                        return 'Informe sua senha';
                      }
                      if (_ != '1234') {
                        return 'Informe sua senha';
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
                            onPressed: () {
                              Navigator.pushNamed(context, '/Menu');
                            },
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                    child: Text('Enviar'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
