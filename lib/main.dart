import 'package:flutter/material.dart';
import 'package:portfolio/locator.dart';
import 'package:portfolio/router/router.dart';
import 'package:portfolio/tema/tema.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  //StreamSubscription<QuerySnapshot>? _listarImagensSubscription;

  setupLocator();
  Flurorouter.configureRoutes();

  runApp(MultiProvider(
    providers: [
      //ChangeNotifierProvider(create: (context) => Formulario()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
