# Dart IO 

O método readLineSync() do stdin permite capturar uma String do console.

## Observação 

- Erro "UnimplementedError: Global evaluation not currently supported" o depurador do VS Code para Dart/Flutter atualmente não suporta avaliação global.
- Executando: Abra o terminal no VS Code. Caso não consiga abrir o terminal, siga os seguintes passos.

> Procure por "Terminal" na barra superior da página do VS Code. Clique no terminal e clique em "Executar arquivo ativo".

> Escreva dart run [nome do seu arquivo.dart] (ignore os colchetes) e pressione enter.

> Exemplo: dart run e:\academia_do_flutter\projetos_dart\dart_input_out\lib\dart_input_out.dart

> Dependendo do tipo de Terminal que esteja usando se você estiver dentro da pasta do arquivo não precisa colocar todo o caminho como fiz acima.

> Exemplo: "e:\academia_do_flutter\projetos_dart\dart_input_out\lib\" 

### Windows Terminal (Para quem usa o Windows 10)
O Windows Terminal é um aplicativo da Microft que permite executa várias abas de comando em uma única janela além de ter muitos recursos que facilitam como um
autocompletar o caminho do arquivo quando digitamos.

- Instale o "Windows Terminal" da Microsoft Store . Isso permite que você esteja sempre na versão mais recente quando lançamos novas compilações com atualizações automáticas.

- Link -> https://github.com/microsoft/terminal



#### Saída padrão no Dart
No dart, há duas maneiras de exibir a saída no console: 

- Usando instrução print().
- Usando a instrução stdout.write().

Imprimindo a saída de duas maneiras diferentes:

```
import 'dart:io';

void main()
{
  // Primeira forma de imprimir
  print("Welcome to GeeksforGeeks! // Imprimindo usando o print()");
  // Segunda forma de imprimir
  stdout.write("Welcome to GeeksforGeeks! // Imprimindo usando stdout.write()");
}
```

> Nota: 
> A instrução print() traz o cursor para a próxima linha enquanto stdout.write() não traz o cursor para a próxima linha, ele permanece na mesma linha.

# Compilando arquivo (comando)

dart compile exe lib/dart_input_out.dart -o bin/dart_input_out.exe

#### Exemplos

Ex - 1
```
// importando dart:io arquivo
import 'dart:io';

void main()
{
    print("Digite seu nome?");
    // Lendo o nome digitado
    String? nome = stdin.readLineSync(); // null safety in name string

    // Printing the name
    print("Olá, $nome! \nBem-vindo a linha de comando do Dart!!");
}
```
Ex - 2
```
import 'dart:convert';
import 'dart:io';

void main() {
  print('1 + 1 = ...');
  var linha = stdin.readLineSync(encoding: utf8);
  print(linha?.trim() == '2' ? 'Sim!' : 'Não :(');
}

```
Ex - 3
```
import 'dart:io';

void main()
{
    // Perguntando o número favorito
    print("Digite seu número favorito:");
 
   // Lendo o número digitado
    int? n = int.parse(stdin.readLineSync()!);
   // ? indica que pode ser null
   // ! força para o tipo subjacente mais próximo caso não haja uma resposta
 
    // Imprimindo o número
    print("Seu número favorito é $n");
}
```
Ex - 4
```
import 'dart:io';

void main()
{
  print("-----------Somando dois números-----------");
  print("Digite o primeiro número:");
  int? n1 = int.parse(stdin.readLineSync()!);
  print("Digite o segundo número:");
  int? n2 = int.parse(stdin.readLineSync()!);
  // Somando e imprimindo o resultado
  int soma = n1 + n2;
  print("A soma é $soma");
}

```

https://www.geeksforgeeks.org/dart-standard-input-output/