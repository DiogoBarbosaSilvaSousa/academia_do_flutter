"0"==============================================================================

OpenJDK(Java) da Microsoft https://www.microsoft.com/openjdk

Criar link simbólico (-Force caso já tenha criado o link simbólico):
New-Item -ItemType SymbolicLink -Path "PathDoLink" -Target "Path Do JDK" ou
New-Item -ItemType SymbolicLink -Path "PathDoLink" -Target "Path Do JDK" -Force

Exemplo:
New-Item -ItemType SymbolicLink -Path "C:\DevPrograms\Microsoft\jdk\current" -Target "C:\DevPrograms\Microsoft\jdk\jdk-11.0.18.10-hotspot" ou
New-Item -ItemType SymbolicLink -Path "C:\DevPrograms\Microsoft\jdk\current" -Target "C:\DevPrograms\Microsoft\jdk\jdk-17.0.6.10-hotspot" -Force
New-Item -ItemType SymbolicLink -Path "C:\DevPrograms\Microsoft\jdk\current" -Target "C:\DevPrograms\Microsoft\jdk\jdk-8.0.362.9-hotspot" -Force

Criar variável JAVA_HOME e adicionar o link simbólico %JAVA_HOME%\bin


"1"==============================================================================

Comandos que me ajudaram a resolver problemas com relação ao git no fvm.
Estes comandos abaixo me ajudaram a resolver o problema de "Error not found git"
quando tentava usar o PowerShell sem ser o administrador.


git config --global --add safe.directory C:/Users/Diogo/fvm/versions/3.3.10
git config --global --add safe.directory C:/Users/Diogo/fvm/versions/stable

"2"==============================================================================
Na loja da Microsoft Store você pode baixar o programa "Windows Terminal" que é  
um programa que permite abrir várias janelas do PowerShell e Prompt em várias 
abas. Permite muitas personalizações.

"3"==============================================================================
Use o programa "Chocolatey" - Link(https://chocolatey.org/) para instalar os 
programas que precisa no Windows parecido com a linha de comando do "Linux".

*Inglês*
By default, the SDK is installed at C:\tools\dart-sdk. You can change that 
location by setting the ChocolateyToolsLocation environment variable to your 
chosen installation directory.

*If you can’t use the Dart SDK executables, add the SDK location to your PATH:

1 - In the Windows search box, type env.
2 - Click Edit the system environment variables.
3 - Click Environment Variables….
4 - In the user variable section, select Path and click Edit….
5 - Click New, and enter the path to the dart-sdk directory.
6 - In each window that you just opened, click Apply or OK to dismiss it and apply 
the path change.

*Tradução (Português)*
Por padrão, o SDK é instalado em C:\tools\dart-sdk. Você pode alterar esse local 
definindo a ChocolateyToolsLocation variável de ambiente para o diretório de 
instalação escolhido.

*Se você não puder usar os executáveis ​​do Dart SDK, adicione o local do SDK ao seu PATH:

1 - Na caixa de pesquisa do Windows, digite env.
2 - Clique em Editar as variáveis ​​de ambiente do sistema .
3 - Clique em Variáveis ​​de Ambiente… .
4 - Na seção de variável de usuário, selecione Caminho e clique em Editar… .
5 - Clique em Novo e insira o caminho para o dart-sdk diretório.
6 - Em cada janela que você acabou de abrir, clique em Aplicar ou OK para fechá-la e 
aplicar a alteração de caminho.

"4"==============================================================================

Preparação de ambiente para usar o Flutter - Link(https://academiadoflutter.com.br/preparacao)

"5"==============================================================================

Extensions instaladas no VSCode:

*Webstorm IntelliJ Darcula Theme 
https://marketplace.visualstudio.com/items?itemName=xr0master.webstorm-intellij-darcula-theme

*IntelliJ IDEA Keybindings	
https://marketplace.visualstudio.com/items?itemName=k--kato.intellij-idea-keybindings

*vscode-icons
https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons

*Awesome Flutter Snippets
https://marketplace.visualstudio.com/items?itemName=Nash.awesome-flutter-snippets

*Dart Data Class Generator
https://marketplace.visualstudio.com/items?itemName=hzgood.dart-data-class-generator

*Flutter & Dart Utilities
https://marketplace.visualstudio.com/items?itemName=RodrigoRahman.flutter-dart-utils

*bloc	
https://marketplace.visualstudio.com/items?itemName=FelixAngelov.bloc

*Error Lens
https://marketplace.visualstudio.com/items?itemName=usernamehw.errorlens

*Image Preview
https://marketplace.visualstudio.com/items?itemName=kisstkondoros.vscode-gutter-preview

*Pubspec Dependency Search
https://marketplace.visualstudio.com/items?itemName=everettjf.pubspec-dependency-search

*Live Share
https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare
