import 'package:financial_app/src/modules/core/extensions/double_extension.dart';
import 'package:financial_app/src/modules/home/interactor/stores/home/home_store.dart';
import 'package:flutter/material.dart';

import '../widgets/home_app_bar.dart';
import '../widgets/home_drawer.dart';
import '../widgets/top_background.dart';

class HomePage extends StatefulWidget {
  final HomeStore _store;

  const HomePage(this._store, {super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeStore get store => widget._store;

  @override
  void initState() {
    store.addListener(() {});

    store.fetchUser();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bodyMedium = theme.textTheme.bodyMedium;

    return ValueListenableBuilder(
        valueListenable: store,
        builder: (context, state, child) {
          return Scaffold(
            appBar: HomeAppBar(user: state.user),
            drawer: HomeDrawer(
              user: state.user,
              onLogoutPressed: () {},
              onProfilePressed: () {},
            ),
            body: Stack(
              children: [
                const TopBackground(),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bom dia ${state.user.firstName},',
                        style: bodyMedium?.copyWith(
                          color: Colors.white,
                          fontSize: 28,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          height: 120,
                          width: double.maxFinite,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Seu saldo atual',
                                style: bodyMedium?.copyWith(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                state.user.balance.toCurrency(),
                                style: bodyMedium?.copyWith(
                                  color: const Color(0xff2D99FF),
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
