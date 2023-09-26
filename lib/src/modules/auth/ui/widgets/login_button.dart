import 'package:flutter/material.dart';

import '../../../../shared/images.dart';

class LoginButton extends StatelessWidget {
  final VoidCallback onPressed;

  const LoginButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bodyMedium = theme.textTheme.bodyMedium;

    return Container(
      width: double.infinity,
      height: 72,
      decoration: BoxDecoration(
        color: theme.primaryColor,
        borderRadius: BorderRadius.circular(28),
        image: const DecorationImage(
          image: AssetImage(Images.loginButtonBackground),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: theme.primaryColor.withOpacity(0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Login',
              style: bodyMedium?.copyWith(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const Icon(
              Icons.arrow_forward_sharp,
              color: Colors.white,
              fill: 0.3,
            ),
          ],
        ),
      ),
    );
  }
}
