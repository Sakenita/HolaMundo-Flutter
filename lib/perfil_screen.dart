import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
                child: Image.asset("assets/img/catpfp.jpg"),
            ),
            const Text(
              'Sara Arias, estudiante de Ingeniería de Sistemas',
            ),
            const Text(
              '7mo Semestre',
            ),
            const Text(
              'Programación de Dispositivos Móviles',
            ),
          ],
        ),
      ),
    );
  }
}

/*
appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
                child: Image.asset("assets/img/catpfp.jpg"),
            ),
            const Text(
              'Sara Arias, estudiante de Ingeniería de Sistemas',
            ),
            const Text(
              'Programación de Dispositivos Móviles',
            ),
          ],
        ), 
      ),*/