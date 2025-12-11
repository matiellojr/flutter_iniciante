import 'package:desenvolvimento_flutter_iniciante/pages/home_page.dart';
import 'package:desenvolvimento_flutter_iniciante/widgets/lista_pessoas.dart';
// import 'package:desenvolvimento_flutter_iniciante/widgets/stateless_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: false,
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        textTheme: TextTheme(
          titleSmall: TextStyle(color: Colors.red),
          bodySmall: TextStyle(color: Colors.red),
          bodyMedium: TextStyle(color: Colors.black),
          titleMedium: TextStyle(
            color: Colors.black, 
            fontSize: 20,
            fontWeight: FontWeight.bold,
            ),
        ),
      ),
      home: HomePage()
      );    
  }
}



