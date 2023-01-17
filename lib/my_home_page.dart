import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_works/bank_account.dart';
import 'package:hive_works/user_list_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late BankAccount bankAccount;
  late Box<BankAccount> _myBox;
  @override
  void initState() {
    super.initState();
    _myBox = Hive.box<BankAccount>('myBox');
    _myBox.put(
        'bankAccount', BankAccount(userName: 'Ali', password: '1212sdsd'));
    bankAccount = _myBox.get('bankAccount')!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${bankAccount.userName} ${bankAccount.password}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UserListPage()));
              },
              child: const Text(
                'To sign up please click on',
                style: TextStyle(fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
