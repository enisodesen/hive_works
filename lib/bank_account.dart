import 'package:hive/hive.dart';
part 'bank_account.g.dart';

@HiveType(typeId: 1)
class BankAccount {
  BankAccount({required this.userName, required this.password});

  @HiveField(0)
  String userName;

  @HiveField(1)
  String password;
}
