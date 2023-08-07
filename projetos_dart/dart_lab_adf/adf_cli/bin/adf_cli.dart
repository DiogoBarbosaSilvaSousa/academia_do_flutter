import 'package:adf_cli/adf_cli.dart' as adf_cli;
import 'package:args/args.dart';
import 'package:args/command_runner.dart';

void main(List<String> arguments) {
  // final argParser = ArgParser();
  // argParser.addFlag('data', abbr: 'd');
  // argParser.addOption('name', abbr: 'n');
  // argParser.addOption('template', abbr: 't');
  // final argResult = argParser.parse(arguments);
  // print(arguments);
  // print('${argResult['data']}');
  // print('${argResult['name']}');
  // print('${argResult['template']}');

  // Comando de Exemplo: dart .\bin\adf_cli.dart -d --name="Rodrigo Rahman" -t console_full

  CommandRunner('ADF CLI', 'ADF CLI')
    ..addCommand(ExemploCommand())
    ..run(arguments);
}

class ExemploCommand extends Command {
  @override
  // TODO: implement description
  String get description => 'Exemplo de Comando';

  @override
  // TODO: implement name
  String get name => 'exemplo';

  ExemploCommand() {
    argParser.addOption('template',
        abbr: 't', help: 'Template de criação do projeto');
  }

  @override
  void run() {
    print('Executar o que eu quiser!!!!!');
    print('${argResults?['template']}');
  }
}
