import 'package:flutter/material.dart';
import 'package:tarea_flutter_sara/perfil_screen.dart';

class Routes extends StatelessWidget {
  final int index;
  const Routes({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> mylist = [
      const Perfil(),
    ];
    return mylist[index];
  }
}
