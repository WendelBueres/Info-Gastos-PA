import 'package:flutter/material.dart';

class Relatorios extends StatefulWidget {
  @override
  _RelatoriosState createState() => _RelatoriosState();
}

class _RelatoriosState extends State<Relatorios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //titulo pagina
        title: Text("InfoGastos COVID-19"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Center(
          child: Column(
            children: [
              GestureDetector(
                //função onTap => rota nomeada
                onTap: () => Navigator.pushNamed(context, "/Rel1"),
                child: Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    //Imagem do container
                      image: new DecorationImage(
                    image: new AssetImage("assets/va.png"),
                    fit: BoxFit.fill,
                  )),
                ),
              ),
              Text(
                //texto abaixo do container
                "Relatório: Vale-Alimentação \n\n\n\n",
                style: TextStyle(fontSize: 16),
              ),
              GestureDetector(
                //função onTap => rota nomeada
                onTap: () => Navigator.pushNamed(context, "/Rel2"),
                child: Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    //Imagem do container
                      image: new DecorationImage(
                    image: new AssetImage("assets/AG.png"),
                    fit: BoxFit.fill,
                  )),
                ),
              ),
              Text(
                //texto abaixo do container
                "Relatório: Testes diagnósticos",
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}
