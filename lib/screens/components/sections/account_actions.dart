import 'package:bank/screens/components/box_card.dart';
import 'package:flutter/material.dart';

class AccountActions extends StatelessWidget {
  const AccountActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: BoxCard(boxContent: _AccountActionsContent()),
    );
  }
}

class _AccountActionsContent extends StatelessWidget {
  const _AccountActionsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Text(
            'Ações da conta',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: BoxCard(
                  boxContent: _AccountActionsContentBox(
                      icon: Icon(Icons.account_balance_wallet),
                      text: "Depositar")),
            ),
            InkWell(
              onTap: () {},
              child: BoxCard(
                  boxContent: _AccountActionsContentBox(
                      icon: Icon(Icons.cached), text: "Transferir")),
            ),
            InkWell(
              onTap: () {},
              child: BoxCard(
                  boxContent: _AccountActionsContentBox(
                      icon: Icon(Icons.center_focus_strong), text: "Ler")),
            ),
          ],
        )
      ],
    );
  }
}

class _AccountActionsContentBox extends StatelessWidget {
  final Icon icon;
  final String text;

  const _AccountActionsContentBox(
      {Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: 74,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: icon,
          ),
          Text(text),
        ],
      ),
    );
  }
}
