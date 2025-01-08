import 'package:flutter/material.dart';

class BoxCard extends StatelessWidget {
// Este Widget foi criado para ser um componente reutilizável, permitindo a criação de vários cards com o mesmo formato,
// mas com conteúdos diferentes em cada um. Assim, podemos manter a consistência no layout, enquanto variamos as informações exibidas.
  final Widget boxContent;
  const BoxCard({super.key, required this.boxContent});

  @override
  Widget build(BuildContext context) {
    return  Container(
    padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        boxShadow: kElevationToShadow[3],
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).cardColor,
      ),
      child: boxContent,
    );
  }
}
