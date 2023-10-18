import 'package:financial_app/src/modules/core/extensions/color_extension.dart';
import 'package:financial_app/src/modules/core/extensions/double_extension.dart';
import 'package:flutter/material.dart';

import '../../../core/helpers/color_helper.dart';
import '../../interector/entities/transaction_category.dart';

class TransactionExpanseCard extends StatelessWidget {
  final TransactionCategory category;

  const TransactionExpanseCard({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    const double height = 103;

    final theme = Theme.of(context);
    final bodyMedium = theme.textTheme.bodyMedium;
    final size = MediaQuery.of(context).size;
    final width = (size.width - 49) / 2;
    final color = ColorHelper.colorFromHex(category.color);

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
                borderRadius: BorderRadius.circular((height + 20) / 2),
              ),
              height: height + 20,
              width: width * 0.7,
              child: const SizedBox.shrink(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  category.name,
                  style: bodyMedium?.copyWith(
                    color: color.addBlack(20),
                    fontSize: 20,
                  ),
                ),
                Text(
                  (category.value ?? 0).toCurrency(),
                  style: bodyMedium?.copyWith(
                    color: color.addBlack(20),
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
