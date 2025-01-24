//import 'package:agendamento/controller/DBController';

import 'package:agendamento/model/user.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}
 


class _InfoState extends State<Info> {

 //final _db =  DBController();

  /*Future<List<User>> _carregarUser() async {
  final users = await _db.recuperarUsuarios();
   return users.map<User>((user) => User.fromMap(user)).toList();

  }
    Widget _listaUser() {
     return FutureBuilder(
      //future: _carregarUser(),
       builder: (context, snapshot) {
if (snapshot.connectionState == ConnectionState.waiting) {
  return const Center(child: CircularProgressIndicator(),
  );
} else if (snapshot.hasError) {
  return Center(
    child: Text(
    "Erro: ${snapshot.error}",
    style: const TextStyle(
      color: Colors.red
      ),
    ),
  );
} else if(!snapshot.hasData || snapshot.data!.isEmpty) {
return const Center(
  child: Text("Nenhum usuario localizado"),
  );
} else {
  final users = snapshot.data!;
  return ListView.builder(
    itemCount: users.length,
    itemBuilder: (context,index) {
      final user = users[index];
      return Card(
        color: Colors.amber[200],
        child: ListTile(
          leading: const Icon(Icons.account_circle),
          title: Text("${user.nome!} - ${user.cpf!}"),
          subtitle: Text("${user.endereco!}"),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [IconButton(
              onPressed:(){},
             icon: Icon(Icons.edit,
              color: Colors.amber[600],),
             ),

              IconButton(
              onPressed:(){},
             icon: Icon(Icons.delete,
              color: Colors.red[600],),
              ),
             ],
            ),
          ),
        );
        }
      );
    }
  },
);
}
  */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    // body: _listaUser(),
    );
  }
}