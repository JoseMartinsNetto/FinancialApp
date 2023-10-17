import 'package:flutter/material.dart';

class TransactionTopCard extends StatelessWidget {
  const TransactionTopCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return SizedBox(
      height: size.height * 0.25,
      width: size.width,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              height: size.height * 0.25,
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
              height: (size.height * 0.25) - 5,
              width: size.width,
              decoration: BoxDecoration(
                color: theme.primaryColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(80),
                  bottomRight: Radius.circular(80),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
