import 'package:flutter/material.dart';
import 'package:tarea_flutter_sara/nav.dart';
import 'package:tarea_flutter_sara/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Perfil Sara',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  NavBar? myNavBar;

  @override
  void initState() {
    myNavBar = NavBar(currentIndex: (i) {
      setState(() {
        index = i;
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: myNavBar,
      body: Routes(index: index),
    );
  }
}
