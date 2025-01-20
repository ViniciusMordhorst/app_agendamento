class User {
  int? id;
  String? nome;
  String? cpf;
  String? email;
  String? senha;
  String? endereco;

  User(this.nome, this.cpf, this.email, this.senha, this.endereco);

   Map toMap(){
    Map<String, Object?> map = {
      'nome': nome,
      'cpf': cpf,
      'email': email,
      'senha': senha,
      'endereco': endereco

    };

    if (id != null) {
      map['id'] = id;
    }

    return map;
  }

  User.fromMap(Map map) {
    id = map['id'];
    nome = map['nome'];
    cpf = map['cpf'];
    email = map ['email']; 
    senha = map ['senha'];
    endereco = map ['endereco'];
  }

}









