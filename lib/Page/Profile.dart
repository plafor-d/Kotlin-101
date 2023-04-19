import 'package:flutter/material.dart';

import '../Api/Send_data.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State  {
  late String _login;
  late String _password;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _controller = TextEditingController();
  final TextEditingController _loginController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextField(
                controller: _loginController,
                decoration: const InputDecoration(hintText: 'Enter Login'),
              ), TextField(
                controller: _controller,
                decoration: const InputDecoration(hintText: 'Enter Password'),
              ),
              ElevatedButton(
                onPressed: () { createPromo(_loginController.text,_controller.text);

                },
                child: const Text('Se Connecter'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
