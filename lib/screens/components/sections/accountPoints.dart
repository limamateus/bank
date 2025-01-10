import 'package:bank/screens/components/box_card.dart';
import 'package:bank/screens/components/colorDot.dart';
import 'package:bank/screens/components/content_division.dart';
import 'package:bank/screens/theme/theme_colors.dart';
import 'package:flutter/material.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: BoxCard(boxContent: _AccountPoints()),
    );
  }
}

class _AccountPoints extends StatelessWidget {
  const _AccountPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Pontos Totais"),
        Padding(
          padding: const EdgeInsets.only(bottom: 8, top: 8),
          child: Text(
            "3000",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        ContentDivision(),
        Padding(
          padding: const EdgeInsets.only(top: 8,bottom: 8,),
          child: Text(
            "Objetivos:",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Colordot(color: ThemeColors.recentActivity['income']),
            ),
            Text("Entegra grátis:15000pts"),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Colordot(color: ThemeColors.recentActivity['spent']),
            ),
            Text("1 mês de streaming: 30000pts"),
          ],
        )
      ],
    );
  }
}
