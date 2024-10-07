
# Fast Location - Último Endereço Consultado

Este é um aplicativo Flutter que exibe o último endereço consultado e traça uma rota até ele utilizando a localização atual do usuário. O aplicativo utiliza as APIs `Geolocator`, `Geocoding` e `Map Launcher` para obter a localização do dispositivo, geocodificar endereços e abrir um mapa para navegação.

## Funcionalidades

- Exibe o último endereço consultado.
- Traça uma rota entre a localização atual e o endereço consultado.
- Usa o Google Maps (ou outros aplicativos de mapas suportados) para navegação.

## Requisitos

- Flutter SDK: [Instalar Flutter](https://flutter.dev/docs/get-started/install)
- Android Studio (para emuladores Android) ou Xcode (para emuladores iOS).
- Dispositivo físico ou emulador Android/iOS.

## Configuração do Ambiente

### Passo 1: Clonar o Repositório

Clone o repositório para a sua máquina local:

```bash
git clone https://github.com/yuamignoni/Treinamentos.git
```

### Passo 2: Instalar Dependências

Navegue até o diretório do projeto e execute o seguinte comando para instalar as dependências:

```bash
flutter pub get
```

### Passo 3: Configuração para Android/iOS

- **Android**: Verifique se o emulador Android está configurado e rodando no Android Studio. Se estiver usando um dispositivo físico, ative o "Modo Desenvolvedor" e a "Depuração USB" nas configurações do dispositivo.
- **iOS**: Se estiver rodando no iOS, certifique-se de que o Xcode está instalado e configurado. Além disso, verifique as permissões no arquivo `Info.plist`.

### Passo 4: Configurar o Emulador ou Dispositivo Físico

Para testar o aplicativo em um emulador ou dispositivo físico:

- Abra o **Android Studio** ou **Xcode** e configure um emulador.
- Para dispositivos físicos, certifique-se de que eles estão conectados e em modo de depuração.

### Passo 5: Rodar o Aplicativo

Com o dispositivo ou emulador configurado, execute o seguinte comando:

```bash
flutter run
```

O Flutter irá compilar o aplicativo e executá-lo no emulador ou dispositivo.

### Passo 6: Testando Funcionalidades

- A aplicação exibirá o último endereço consultado.
- Pressione o botão "Traçar Rota" para abrir o Google Maps (ou outro aplicativo de mapas disponível) e traçar a rota até o endereço consultado a partir da sua localização atual.

## Resolução de Problemas

### Erro: `MissingPluginException`

Se você encontrar o erro `MissingPluginException` ao tentar usar o `MapLauncher`, certifique-se de que você está executando o aplicativo em um dispositivo Android ou iOS e não no navegador (Flutter Web), pois o plugin não é compatível com a Web.

## Licença

Este projeto está licenciado sob a [MIT License](LICENSE).
