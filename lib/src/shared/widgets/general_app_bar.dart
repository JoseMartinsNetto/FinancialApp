import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class GeneralAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const GeneralAppBar({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bodyMedium = theme.textTheme.bodyMedium;

    return AppBar(
      backgroundColor: theme.primaryColor,
      automaticallyImplyLeading: Modular.to.canPop(),
      title: Text(
        title,
        style: bodyMedium?.copyWith(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: IconButton(
          onPressed: () => Modular.to.pop(),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          )),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
