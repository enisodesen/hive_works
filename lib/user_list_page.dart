import 'package:flutter/material.dart';
import 'package:hive_works/widgets/text_field.dart';

class UserListPage extends StatelessWidget {
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                const CustomTextField(
                    hintText: 'Enter Your Name', prefixIcon: Icons.person),
                const CustomTextField(
                    hintText: 'Enter Your Username',
                    prefixIcon: Icons.person_add_alt_rounded),
                const CustomTextField(
                    hintText: 'Create a password', prefixIcon: Icons.lock),
                Row(
                  children: const [],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
