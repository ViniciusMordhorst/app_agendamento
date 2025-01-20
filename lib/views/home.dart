import 'package:agendamento/views/agendar.dart';
import 'package:agendamento/views/consultas.dart';
import 'package:agendamento/views/Hospitais.dart';
import 'package:agendamento/views/Medicos.dart';
import 'package:agendamento/views/hometab.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

 void _navigateToScreen(Widget telas) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => telas),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: const Text('Tela Inicial'),
        backgroundColor: Colors.blue[600],
      ),
      body: 
      Container(
        padding: const EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 1,

          children: <Widget>[
            Container(
              width: 10,
              height: 10,
            ),
            Container(
              width: 10,
              height: 10,
            ),
            Card(
              margin: const EdgeInsets.all(10.0),
              child: InkWell(
                splashColor: Colors.blueGrey,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                        icon: const Icon(
                          Icons.local_hospital_sharp,
                          size: 100.0,
                        ),
                        onPressed: () {
                          _navigateToScreen(const Hospitais());
                        },
                      ),
                      const Text(
                        "Hospitais",
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.blueGrey,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                        icon: const Icon(
                          Icons.calendar_month_sharp,
                          size: 100.0,
                        ),
                        onPressed: () {
                          _navigateToScreen(const Agendar());
                        },
                      ),
                      const Text(
                        "Agendar",
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.blueGrey,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                        icon: const Icon(
                          Icons.medical_services_sharp,
                          size: 100.0,
                        ),
                        onPressed: () {
                          _navigateToScreen(const Medicos());
                        },
                      ),
                      const Text(
                        "Médicos",
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.blueGrey,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                        icon: const Icon(
                          Icons.info,
                          size: 100.0,
                        ),
                        onPressed: () {
                          _navigateToScreen(const Consultas());
                        },
                      ),
                      const Text(
                        "Consultas",
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),  
      ),

 floatingActionButton: FloatingActionButton(
        onPressed: () {
          _navigateToScreen(const Hometab()); // Navega para a tela de Perfil
        },
        backgroundColor: Colors.blue[600],
        child: const Icon(Icons.person),
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