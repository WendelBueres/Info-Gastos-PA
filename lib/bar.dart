import 'package:flutter/material.dart';
import 'controler/app_controler.dart';
import 'Pages/config.dart';
import 'Pages/sobre.dart';
import 'Pages/relatorios.dart';

class BarNavigation extends StatefulWidget {
  BarNavigation({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<BarNavigation> {
  final List _screens = [
    Sobre(),
    Relatorios(),
    Config(),
  ];

  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return Scaffold(
            body: _screens[_currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: (index) => setState(() => _currentIndex = index),
              type: BottomNavigationBarType.fixed,
              backgroundColor: AppController.instance.isDarkTheme
                  ? Colors.blue[900]
                  : Colors.red,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white,
              elevation: 0.0,
              items: [
                Icons.contact_page_rounded,
                Icons.insert_chart,
                Icons.settings_applications_rounded
              ]
                  .asMap()
                  .map((key, value) => MapEntry(
                        key,
                        BottomNavigationBarItem(
                          title: Text(''),
                          icon: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 6.0,
                              horizontal: 16.0,
                            ),
                            decoration: BoxDecoration(
                              color: _currentIndex == key
                                  ? Colors.blueAccent
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Icon(value),
                          ),
                        ),
                      ))
                  .values
                  .toList(),
            ),
          );
        });
  }
}
