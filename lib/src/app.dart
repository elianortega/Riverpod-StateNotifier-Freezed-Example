import 'package:flutter/material.dart';
import 'features/random_number/views/random_number_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RandomNumberPage(),
    );
  }
}
