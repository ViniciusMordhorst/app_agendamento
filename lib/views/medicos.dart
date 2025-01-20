import 'package:agendamento/views/Agendar.dart';
import 'package:agendamento/views/consultas.dart';
import 'package:agendamento/views/hometab.dart';
import 'package:agendamento/views/hospitais.dart';
import 'package:flutter/material.dart';

class Medicos extends StatefulWidget {
  const Medicos({super.key});

  @override
  State<Medicos> createState() => _MedicosState();
}

class _MedicosState extends State<Medicos> {
  final List<String> _medicos = <String>['Médico 1'];

void _navigateToScreen(Widget telas) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => telas),
    );
  }
  void _adicionarItem(){
    setState(() {
    _medicos.add('Médico ${_medicos.length + 1}');
    });

  }

  void _removerItem (int index){
    setState(() {
      _medicos.removeAt(index);
    });

    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Usuário excluido com sucesso'),
    duration: Durations.short1,
    ),
    );

  }

  Widget listView(){
    return ListView(
    padding: const EdgeInsets.all(8),
    children: [
      Card(
        color: Colors.amber[100],
        child: ListTile(
          leading: Icon(
            Icons.account_circle,
            size: 32,
            color: Colors.lightBlueAccent,
          ),
          title: const Text('Médico 1'),
        ),
      ),
        Card(
        color: Colors.amber[100],
        child: ListTile(
          leading: Icon(
            Icons.account_circle,
            size: 32,
            color: Colors.lightBlueAccent,
          ),
          title: const Text('Médico 2'),
        ),
      ),
      Card(
        color: Colors.amber[100],
        child: ListTile(
          leading: Icon(
            Icons.account_circle,
            size: 32,
            color: Colors.lightBlueAccent,
          ),
       title: const Text('Médico 3'),
        ),
      ),
      Card(
        color: Colors.amber[100],
        child: ListTile(
          leading: Icon(
            Icons.account_circle,
            size: 32,
            color: Colors.lightBlueAccent,
          ),
          title: const Text('Médico 4'),
        ),
      ),
    ],
  );
}
Widget listViewBuilder(){
  return ListView.builder(
    padding: const EdgeInsets.all(8),
    itemCount: _medicos.length,
    itemBuilder: (context, index) {
      return Card(
        color: Colors.blueAccent[100],
        child: ListTile(
          leading: Icon(
            Icons.account_circle,
            size: 32,
            color: Colors.lime,
          ),
          trailing: IconButton(
            onPressed:(){ _removerItem(index);
            },
            icon: const Icon(Icons.delete,
             color: Colors.red,
             ),
            ) ,
          title:Text(_medicos[index]),
        ),
      );
    },
  );
  
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
      backgroundColor: Colors.blue[600],
        title:  const Text('Lista de Médicos'),
      ),
      body: SafeArea(
        child: listViewBuilder()
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _adicionarItem, 
          backgroundColor: Colors.blue[600],
          child: const Icon(Icons.add),
          ),
          bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          // Navegação por índice do BottomNavigationBar
          switch (index) {
            case 0:
              _navigateToScreen(const Hospitais());
              break;
            case 1:
              _navigateToScreen(const Agendar());
              break;
            case 2:
              _navigateToScreen(const Medicos());
              break;
            case 3:
              _navigateToScreen(const Consultas());
              break;
            case 4:
              _navigateToScreen(const Hometab());
              break;
          }
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue[600],
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital_sharp),
            label: 'Hospitais',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_sharp),
            label: 'Agendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.medical_services_sharp),
            label: 'Médicos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Consultas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}