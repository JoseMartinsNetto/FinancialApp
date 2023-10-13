import 'package:financial_app/src/shared/icons.dart';
import 'package:financial_app/src/shared/widgets/financial_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../shared/images.dart';
import '../../../../shared/widgets/keyboard_dismissible.dart';
import '../widgets/login_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final bodyMedium = theme.textTheme.bodyMedium;

    return Scaffold(
      body: KeyboardDismissible(
        child: SingleChildScrollView(
          child: SizedBox(
            width: size.width,
            height: size.height,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned(
                  top: 0,
                  child: SizedBox(
                    width: size.width,
                    height: size.height * 0.45,
                    child: Image.asset(
                      Images.loginBackground,
                      fit: BoxFit.cover,
                      height: 30,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 60, top: 80),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
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
                      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20, top: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Entrar',
                            textAlign: TextAlign.start,
                            style: bodyMedium?.copyWith(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: theme.colorScheme.secondary,
                            ),
                          ),
                          FinancialTextFormField(
                            label: 'E-mail',
                            onChanged: (value) {},
                          ),
                          FinancialTextFormField(
                            label: 'Senha',
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                      child: Align(
                        alignment: Alignment.center,
                        child: LoginButton(
                          onPressed: () {},
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}