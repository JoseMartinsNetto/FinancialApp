import 'package:financial_app/src/modules/auth/interactor/entities/user.dart';
import 'package:flutter/material.dart';

import 'profile_button.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final UserEntity user;

  const HomeAppBar({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AppBar(
      backgroundColor: theme.primaryColor,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
          const SizedBox.shrink(),
          Column(
            children: [
              const SizedBox(height: 20),
              ProfileButton(
                image: user.image,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
