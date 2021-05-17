import 'package:flutter/material.dart';
import 'config.dart';
import 'sobre.dart';
import 'relatorios.dart';

class BarNavigation extends StatefulWidget {
  BarNavigation({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<BarNavigation> {
  final tabs = [
    Sobre(),
    Relatorios(),
    Config(),
  ];

  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // controlador de páginas
        body: tabs[_currentIndex],
        //Barra de navegação inferior.
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            //Botão "sobre".
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_page_rounded),
              // ignore: deprecated_member_use
              title: Text("Sobre"),
            ),
            //Botão "Relatórios".
            BottomNavigationBarItem(
              icon: Icon(Icons.addchart_rounded),
              // ignore: deprecated_member_use
              title: Text("Relatórios"),
            ),
            //Botão "Configurações".
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_applications_rounded),
              // ignore: deprecated_member_use
              title: Text("Configurações"),
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ));
  }
}
