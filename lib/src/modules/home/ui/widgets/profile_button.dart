import 'package:financial_app/src/shared/images.dart';
import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String image;

  const ProfileButton({
    super.key,
    required this.onPressed,
    this.image = Images.profileImageExemple,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SizedBox(
        height: 70,
        width: 70,
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
