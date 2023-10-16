import 'package:financial_app/src/modules/home/ui/widgets/profile_button.dart';
import 'package:financial_app/src/modules/settings/settiings_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../shared/icons.dart';
import '../../../auth/interactor/entities/user.dart';
import 'drawer_list_tile.dart';

class HomeDrawer extends StatelessWidget {
  final UserEntity user;

  const HomeDrawer({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bodyMedium = theme.textTheme.bodyMedium;

    return Drawer(
      child: Column(
        children: [
          const SizedBox(height: 60),
          Row(
            children: [
              ProfileButton(
                image: user.image,
                onPressed: () {},
              ),
              Column(
                children: [
                  Text(
                    user.userName,
                    style: bodyMedium?.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 20),
          DrawerListTile(
            title: 'Transações',
            icon: SizedBox.square(
              dimension: 20,
              child: SvgPicture.asset(AppIcons.transaction),
            ),
            onPressed: () {},
          ),
          DrawerListTile(
            title: 'Configurações',
            icon: const Icon(Icons.settings),
            onPressed: () => Modular.to.pushNamed(SettingsModule.routeName),
          ),
        ],
      ),
    );
  }
}
