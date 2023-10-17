import 'dart:ui';

import 'package:flutter/material.dart';

class BlurContainer extends StatelessWidget {
  final Widget child;
  final ImageFilter? filter;
  final Color backgroundColor;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry padding;
  final BorderRadiusGeometry borderRadius;

  const BlurContainer({
    super.key,
    required this.child,
    required this.backgroundColor,
    this.width,
    this.height,
    this.filter,
    this.borderRadius = BorderRadius.zero,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: BackdropFilter(
        filter: filter ?? ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: padding,
          color: backgroundColor,
          height: height,
          width: width,
          child: child,
        ),
      ),
    );
  }
}
