import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:fastlocation/src/modules/home/page/home_page.dart';
import 'package:fastlocation/src/modules/history/page/history_page.dart';
import 'package:fastlocation/src/shared/storage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Iniciar Hive sem path_provider para plataformas desktop
  await Hive.initFlutter(); // Inicializa o Hive sem path_provider
  await StorageService.init(); // Inicializar armazenamento Hive

  runApp(const FastLocationApp());
}

class FastLocationApp extends StatelessWidget {
  const FastLocationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FastLocation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          const MainScreen(), // Inicia com MainScreen que contém a BottomNavigationBar
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0; // Índice da página atual

  // Lista de páginas para alternar entre HomePage e HistoryPage
  final List<Widget> _pages = [
    HomePage(), // Página de pesquisa de CEP
    HistoryPage(), // Página de histórico de consultas
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FastLocation'),
      ),
      body: _pages[
          _currentIndex], // Exibe a página correspondente ao índice atual
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Índice da página atual
        onTap: (index) {
          setState(() {
            _currentIndex =
                index; // Atualiza o índice para a página selecionada
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar CEP',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Histórico',
          ),
        ],
      ),
    );
  }
}
