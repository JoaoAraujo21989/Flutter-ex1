import 'package:flutter/material.dart';

void main() {
  runApp(const PrimeiraApp());
}

class PrimeiraApp extends StatefulWidget {
  const PrimeiraApp({super.key});

  @override
  State<PrimeiraApp> createState() => _PrimeiraAppState();
}

class _PrimeiraAppState extends State<PrimeiraApp> {
  final nomeInput = TextEditingController();
  String nome = "";

  _onSubmit(){
    setState(() {
      nome = nomeInput.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Minha app'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: nomeInput,
                decoration: InputDecoration(
                  labelText: 'Insira aqui o seu nome?',
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: _onSubmit, 
                child: Text('OK')
                ),
                SizedBox(height: 20,),
                Text('Olá $nome',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                )),
            ],
          ),
        ),
      ),
    );
  } 
}