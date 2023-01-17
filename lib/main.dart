import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'bank_account.dart';
import 'my_home_page.dart';

Future<void> main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BankAccountAdapter());
  await Hive.openBox('myBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
