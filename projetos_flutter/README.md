# Flutter Primeiros Passos
- flutter create --project-name=flutter_primeiros_passos --org br.com.academiaflutter --platforms android,ios -a kotlin -i swift ./flutter_primeros_passos


# Flutter Clean

- flutter pub cache clean
- flutter clean
- flutter pub get
- flutter run

# Flutter Desktop
Tive problemas com o Visual Studio Community 2022 para fazer a compilação do Flutter Desktop para o Windows.
Experimentei fazer um downgrade para o Visual Studio Communitiy 2019 e a compilação rodou normalmente. 

(Logo abaixo consegui uma solução que achei "elegante" para resolver.)

```
Instalei o Visual Studio Community 2019 somente com as Ferramentas para Desenvolvimento Desktop com C++ e mantive o Visual Studio Community 2022 sem as Ferramentas para Desenvolvimento Desktop com C++.
Dessa forma quando faço a compilação com o Flutter ele usa o Visual Studio Community 2019 ao invés do 2022.
```

```
Nota: Em uma máquina virtual com o Windows 10 instalado tenho conseguido compilar usando o Visual Studio Community 2022 sem problemas até agora.
```

# Flutter Visual Studio

[v] Visual Studio - develop Windows apps (Visual Studio Community 2019 16.11.29)
    - Visual Studio at C:\DevPrograms\Microsoft\VisualStudio\2019\Community
    - Visual Studio Community 2019 version 16.11.33927.289
    - Windows 10 SDK version 10.0.19041.0