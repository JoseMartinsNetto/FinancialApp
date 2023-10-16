import 'package:flutter/material.dart';

class LogoutButton extends StatelessWidget {
  final VoidCallback onPressed;

  const LogoutButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bodyMedium = theme.textTheme.bodyMedium;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
          side: BorderSide(color: theme.primaryColor),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Sair',
              style: bodyMedium?.copyWith(
                fontSize: 20,
                color: theme.primaryColor,
              ),
            ),
            const Icon(Icons.logout),
          ],
        ),
      ),
    );
  }
}
