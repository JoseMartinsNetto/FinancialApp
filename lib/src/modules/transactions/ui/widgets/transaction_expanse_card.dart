import 'package:financial_app/src/modules/core/extensions/color_extension.dart';
import 'package:financial_app/src/modules/core/extensions/double_extension.dart';
import 'package:flutter/material.dart';

import '../../../core/helpers/color_helper.dart';
import '../../interector/entities/transaction.dart';

class TransactionExpanseCard extends StatelessWidget {
  final Transaction transaction;

  const TransactionExpanseCard({
    super.key,
    required this.transaction,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bodyMedium = theme.textTheme.bodyMedium;
    final size = MediaQuery.of(context).size;
    final width = (size.width - 49) / 2;
    const double height = 103;
    final color = ColorHelper.colorFromHex(transaction.category.color);
    final textColor = color.addBlack(20);

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        gradient: LinearGradient(
          colors: [
            color.addWhite(20),
            color,
          ],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: -20,
            left: -15,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withAlpha(50),
                borderRadius: BorderRadius.circular(height / 2),
              ),
              height: height,
              width: width * 0.6,
              child: const SizedBox.shrink(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 10),
            child: Column(
              children: [
                Text(
                  transaction.category.name,
                  style: bodyMedium?.copyWith(
                    color: textColor,
                    fontSize: 20,
                  ),
                ),
                Text(
                  transaction.value.toCurrency(),
                  style: bodyMedium?.copyWith(
                    color: textColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
