import 'package:bank/screens/components/colorDot.dart';
import 'package:bank/screens/components/box_card.dart';
import 'package:bank/screens/components/content_division.dart';
import 'package:bank/screens/theme/theme_colors.dart';
import 'package:flutter/material.dart';

class Recentactivity extends StatelessWidget {
  const Recentactivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: BoxCard(boxContent: _RecentActivityContent()),
    );
  }
}

class _RecentActivityContent extends StatelessWidget {
  const _RecentActivityContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: Colordot(color: ThemeColors.recentActivity['spent']),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Saida'),
                    Text(
                      "\$9900.97",
                      style: Theme.of(context).textTheme.bodyLarge,
                    )
                  ],
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: Colordot(color: ThemeColors.recentActivity['income']),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Entrada'),
                    Text(
                      "\$9332.35",
                      style: Theme.of(context).textTheme.bodyLarge,
                    )
                  ],
                )
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 8),
          child: Text("Limite de gastos: \$432.90"),
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          child: LinearProgressIndicator(
            value: 0.3,
            minHeight: 8,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: ContentDivision(),
        ),
        Text(
            'Esse mês você gastou \$1500.00 com jogos. Tente abaixar esse custo!'),
        TextButton(
          onPressed: () {},
          child: Text(
            'Diga-me',
            style: TextStyle(fontSize: 16),
          ),
        )
      ],
    );
  }
}
