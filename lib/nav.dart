import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  final Function currentIndex;
  const NavBar({Key? key, required this.currentIndex}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<NavBar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.purpleAccent,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Perfil',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: 'Mensajes',
        ),
      ],
      currentIndex: index,
      onTap: (int i) {
        setState(() {
          index = i;
          widget.currentIndex(i);
        });
      },
    );
  }
}
