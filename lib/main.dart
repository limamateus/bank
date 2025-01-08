import 'package:bank/screens/Home/home_screen.dart';
import 'package:bank/screens/theme/my_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Bank());
}

class Bank extends StatelessWidget {
  const Bank({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Bank",
      theme: MyTheme,
      home: Home(),
    );
  }
}

