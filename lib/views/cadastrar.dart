import 'dart:developer';

import 'package:agendamento/controller/DBController.dart';
import 'package:agendamento/model/user.dart';
import 'package:flutter/material.dart';
//import 'package:agendamento/controller/DBController';

class Cadastrar extends StatefulWidget {
  const Cadastrar({super.key});

  @override
  State<Cadastrar> createState() => _CadastrarState();
}

class _CadastrarState extends State<Cadastrar> {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _cpfController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _enderecoController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

/* final _db = DBController();*/
User? _user;

  void _salvarForm() async{
  final bool isValid = _formKey.currentState?.validate() ?? false;
  final navigator = Navigator.of(context);

 if(isValid){
    if (_user == null) {
       /*  await _db.salvarUsuario(
        User(_nomeController.text,
         _cpfController.text,
          _emailController.text,
          _enderecoController.text,
            _senhaController.text),

      );*/

    } else {
      
    }
    navigator.pop();
  }
  }

  @override
  void dispose() {
    _nomeController.dispose();
    _cpfController.dispose();
    _emailController.dispose();
    _enderecoController.dispose();
    _senhaController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
         backgroundColor: Colors.lightBlueAccent[100],
           appBar: AppBar(
              title: Text('Cadastrar'),
                backgroundColor: Colors.blueGrey[400],
          ),
        body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
              SizedBox(
                height: 50.0,),
                Form(
                  key: _formKey,
                  child: Column(
                  children: [
                    TextFormField(
             
                      controller: _nomeController,
                      decoration: const InputDecoration(
                        hintText: 'Digite seu nome',
                        labelText: 'Nome',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if(value == null || value.isEmpty){
                          return 'Este campo é obrigatório';
                        }
                        log("Nome: ${_nomeController.text}");
                        return null;
                        
                      },
                    ),
                     const SizedBox(
                      height: 30.0,
                    ),  
                     TextFormField(
                      keyboardType: TextInputType.number,
                      controller: _cpfController,
                      decoration: const InputDecoration(
                        hintText: 'Digite seu CPF',
                        labelText: 'CPF',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if(value == null || value.isEmpty){
                          return 'Este campo é obrigatório';
                        }
                        log("CPF: ${_cpfController.text}");
                        return null;
                        
                      },
                    ),
                     const SizedBox(
                      height: 30.0,
                    ),  

                     TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        hintText: 'Digite seu email',
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if(value == null || value.isEmpty){
                          return 'Este campo é obrigatório';
                        }
                        log("Email: ${_emailController.text}");
                        return null;
                        
                      },
                    ),
                       const SizedBox(
                      height: 30.0,
                    ),  
                     TextFormField(
                      controller: _enderecoController,
                      decoration: const InputDecoration(
                        hintText: 'Digite seu endereço',
                        labelText: 'Endereço',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if(value == null || value.isEmpty){
                          return 'Este campo é obrigatório';
                        }
                        log("Endereço: ${_enderecoController.text}");
                        return null;
                        
                      },
                    ),
                      const SizedBox(
                      height: 30.0,
                    ),          
                     TextFormField(
                      controller: _senhaController,
                      decoration: const InputDecoration(
                        hintText: 'Digite uma senha',
                        labelText: 'Senha',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if(value == null || value.isEmpty){
                          return 'Este campo é obrigatório';
                        }
                        log("Senha: ${_senhaController.text}");
                        return null;
                        
                      },
                    ),
                    
                    const SizedBox(
                      height: 30.0,
                    ),
                    ElevatedButton(onPressed: _salvarForm,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue,
                      foregroundColor: Colors.white70,
                     
                    ),
                     child: const Text ("Enviar"),
                  
                    ),
                  ],
                )),
            ],
          ),
        ),
      ),
    );
  }
}