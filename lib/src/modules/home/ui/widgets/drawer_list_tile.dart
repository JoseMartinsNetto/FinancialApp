import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Widget icon;

  const DrawerListTile({
    super.key,
    required this.title,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bodyMedium = theme.textTheme.bodyMedium;

    return ListTile(
      splashColor: theme.primaryColor.withAlpha(50),
      selectedColor: theme.primaryColor.withAlpha(50),
      selectedTileColor: theme.primaryColor.withAlpha(50),
      focusColor: theme.primaryColor.withAlpha(50),
      hoverColor: theme.primaryColor.withAlpha(50),
      iconColor: theme.primaryColor,
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: theme.primaryColor,
      ),
      leading: icon,
      title: Text(
        title,
        style: bodyMedium?.copyWith(
          fontSize: 16,
          color: theme.primaryColor,
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: onPressed,
    );
  }
}
