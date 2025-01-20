/*import 'package:agendamento/model/user.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBController {
  final String _tabelaUsuarios = "usuarios";


  static final DBController _databaseController = DBController._internal();

  Database? _db;

  factory DBController() {
    return _databaseController;
  }

  DBController._internal();

 // O getter do db agora aguarda corretamente a inicialização
Future get db async {
  if (_db != null) {
    return _db!;
  } else {
    _db = await inicializarDB();
    return _db!;
  }
}



      _onCreate(Database db, int version) async {

      String sql = "CREATE TABLE $_tabelaUsuarios(" 
      "id INTEGER PRIMARY KEY AUTOINCREMENT," 
      "nome VARCHAR," 
      "cpf VARCHAR," 
      "email VARCHAR," 
      "senha VARCHAR," 
      "endereco VARCHAR)";
      
  await db.execute(sql);
  }

    inicializarDB() async {
    final caminhoBancoDados = join(
      await getDatabasesPath(),
       "agendamento.db");
      var db = await openDatabase(
        caminhoBancoDados,
        version: 1,
        onCreate: _onCreate
    );
    return db;
  }


    salvarUsuario(User user) async {
    var bancoDados = await db;
    return await bancoDados.insert(_tabelaUsuarios, user.toMap());
  }


    recuperarUsuarios() async {
    var bancoDados = await db;
    String sql = "SELECT * FROM $_tabelaUsuarios ORDER BY nome";

    return await bancoDados.rawQuery(sql);
  }

   recuperarUsuario(int id) async {
    var bancoDados = await db;
    String sql = "SELECT * FROM $_tabelaUsuarios WHERE id = ?";

    return await bancoDados.rawQuery(sql, [id]);
  }


    AtualizarUsuario(User user) async {
    var bancoDados = await db;
    return await bancoDados.update(
      _tabelaUsuarios,
     user.toMap(),
     where: "id = ?",
     whereArgs:[user.id],
    );
  }
    

   deletarUsuario(int id) async {
    var bancoDados = await db;
    return await bancoDados.delete(
      _tabelaUsuarios,
      where: "id = ?",
      whereArgs: [id],
    );
  }


}
*/