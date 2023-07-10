class Pessoa {
  String nome;
  String email;
  Pessoa({
    required this.nome,
    required this.email,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    // if (other is Pessoa) {
    //   if (other.nome == nome) {
    //     if (other.email == email) {
    //       return true;
    //     } else {
    //       return false;
    //     }
    //   } else {
    //     return false;
    //   }
    // } else {
    //   return false;
    // }

    /*  var isEquals = false;

    if (other is Pessoa) {
      if (other.nome == nome) {
        if (other.email == email) {
          isEquals = true;
        }
      }
    }

    return isEquals; */

    return other is Pessoa && other.nome == nome && other.email == email;
  }

  @override
  int get hashCode {
    return nome.hashCode ^ email.hashCode;
  }

  @override
  String toString() {
    return ''' 
        Pessoa:
          nome: $nome,
          email: $email
    ''';
  }
}
