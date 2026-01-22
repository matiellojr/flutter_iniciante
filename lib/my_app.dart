
import 'package:desenvolvimento_flutter_iniciante/routes/router.dart';
import 'package:desenvolvimento_flutter_iniciante/routes/routes.dart';
import 'package:desenvolvimento_flutter_iniciante/themes/themes.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.initialRoute,
      routes: routes,
      title: 'Flutter Demo',
      theme: darkTheme,
    );    
  }
}
