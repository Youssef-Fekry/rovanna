import 'package:flutter/material.dart';

class DrawerItemWidget extends StatelessWidget {
  const DrawerItemWidget(
      {super.key, required this.text, required this.icon, required this.onTab});

  final String text;
  final IconData icon;
  final VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      onTap: onTab,
    );
  }
}
