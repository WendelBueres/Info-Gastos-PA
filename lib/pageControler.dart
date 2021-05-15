import 'package:flutter_modular/flutter_modular.dart';

class PageController = _PageControllerBase with _$PageController; 

abstract class _PageControllerBase with Store implements Disposable(

//instanciando controlador de troca de páginas.
  final pageViewController = PageController();

  //controle de memoria controlador de páginas.
  @override
  void dispose() {
    pageViewController.dispose();
  }