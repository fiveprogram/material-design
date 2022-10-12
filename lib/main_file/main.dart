import 'package:flutter/material.dart';

import '../app_bar.dart';
import 'main_select_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blueGrey),
      home: const MainSelectPage(),
    );
  }
}
