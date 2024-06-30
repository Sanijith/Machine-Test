import 'package:flutter/material.dart';
import 'package:machine_test/add_plant.dart';
import 'package:machine_test/bottom.dart';
import 'package:machine_test/cart.dart';
import 'package:machine_test/home_page.dart';
import 'package:machine_test/item.dart';
import 'package:machine_test/login.dart';
import 'package:machine_test/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Login(),
    );
  }
}


