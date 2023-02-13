void main() {
  // Operadores Lógicos
  // &&(E) , ||(Ou) , !(Inverte a condição)

  final sexo = 'M';
  final idade = 18;

  // As duas condições precisam ser verdadeiras
  if (sexo == 'M' && idade >= 18) {
    print('Pode entrar!!!');
  } else {
    print('Não pode entrar!!!');
  }

  // Uma das condições precisam ser verdadeiras
  if (sexo == 'M' || idade >= 18) {
    print('Pode entrar!!!');
  } else {
    print('Não pode entrar!!!');
  }

  // Inverte a condição
  if (!(sexo == 'F')) {
    print('O sexo é masculino.');
  }
}
