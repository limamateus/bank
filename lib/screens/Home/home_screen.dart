import 'package:bank/screens/components/colorDot.dart';
import 'package:bank/screens/components/box_card.dart';
import 'package:bank/screens/components/content_division.dart';
import 'package:bank/screens/components/sections/header.dart';
import 'package:bank/screens/components/sections/recentActivity.dart';
import 'package:bank/screens/theme/theme_colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // Obs : Scafoold é um widget do material
    return Scaffold(
      body: Column(
        children: [
          Header(),
          Recentactivity(),
        ],
      ),
    );
  }
}
