import 'package:flutter/material.dart';
import 'package:pokemon/http.dart';
import 'package:provider/provider.dart';
import './homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => Http(),
        child: HomeProvider(),
      ),
    );
  }
}
