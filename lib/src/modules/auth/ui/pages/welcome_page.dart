import 'package:financial_app/src/modules/auth/ui/widgets/login_button.dart';
import 'package:financial_app/src/shared/icons.dart';
import 'package:financial_app/src/shared/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final bodyMedium = theme.textTheme.bodyMedium;

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: size.width,
            height: size.height * 0.9,
            child: Image.asset(
              Images.welcomeBackground,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 60, top: 80),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: SvgPicture.asset(
                        AppIcons.logoWhite,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: 200,
                      child: Text(
                        'Bem vindo novamente',
                        style: bodyMedium?.copyWith(
                          fontSize: 28,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                child: Align(
                  alignment: Alignment.center,
                  child: LoginButton(onPressed: () {}),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
