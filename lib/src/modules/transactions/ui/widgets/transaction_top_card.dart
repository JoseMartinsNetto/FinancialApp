import 'package:financial_app/src/modules/core/extensions/double_extension.dart';
import 'package:flutter/material.dart';

class TransactionTopCard extends StatelessWidget {
  final double totalValue;

  const TransactionTopCard({super.key, required this.totalValue});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final bodyMedium = theme.textTheme.bodyMedium;

    return SizedBox(
      height: size.height * 0.20,
      width: size.width,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              height: size.height * 0.20,
              width: size.width,
              decoration: const BoxDecoration(
                color: Color(0xff87F0FF),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(80),
                  bottomRight: Radius.circular(80),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Container(
              height: (size.height * 0.20) - 5,
              width: size.width,
              decoration: BoxDecoration(
                color: theme.primaryColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(80),
                  bottomRight: Radius.circular(80),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Total de seus gastos',
                    style: bodyMedium?.copyWith(
                      fontSize: 22,
                      color: const Color(0xff87F0FF),
                    ),
                  ),
                  Text(
                    totalValue.toCurrency(),
                    style: bodyMedium?.copyWith(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
