import 'package:flutter/material.dart';

class BarNavigation extends StatefulWidget {
  BarNavigation({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<BarNavigation> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // controlador de páginas
        body: PageView(
          controller: pageViewController,
          children: [
            Container(),
            Container(),
            Container(),
          ],
        ),

        //Barra de navegação inferior.
        bottomNavigationBar: AnimatedBuilder(
          animation: pageViewController,
          builder: (context, snapshot) {
            return BottomNavigationBar(
              currentIndex: pageViewController?.page?.round() ?? 0,
              onTap: (index) {
                pageViewController.jumpToPage(index);
              },
              //Item selecionado na barra.
              items: [
                //Botão "sobre".
                BottomNavigationBarItem(
                  icon: Icon(Icons.contact_page_rounded),
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
            );
          },
        ));
  }
}
