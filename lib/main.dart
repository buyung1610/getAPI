import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './http.dart';

import './homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => HttpProvider(),
        child: HomePage(),
      ),
    );
  }
}
