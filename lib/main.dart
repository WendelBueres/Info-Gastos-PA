import 'package:flutter/material.dart';
import 'splashscreen.dart';

void main() => runApp(SplashScreenPage());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class InfoGastos extends StatefulWidget {
  InfoGastos({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<InfoGastos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Barra superior.

      appBar: AppBar(
          title: Text("InfoGastos COVID-19"),
          backgroundColor: Colors.redAccent),
      //Barra de navegação inferior.
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
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
      ),
    );
  }
}
