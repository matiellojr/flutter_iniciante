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
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meu primeiro App'),
        ),
        body: MeuStatelessWidget(),
        ),
    );
  }
}


class MeuStatelessWidget extends StatelessWidget {
  const MeuStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    int count = 0;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "Contador: $count",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.blue,             
                ),
              ),
          ],
        ),
        SizedBox(height: 16), 
        ElevatedButton(
          onPressed: () {
            count++;
          }, 
          child: Text("Aperte aqui"),
        ),
      ],
    );
  }
}
