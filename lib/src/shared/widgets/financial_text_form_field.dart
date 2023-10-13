import 'package:flutter/material.dart';

class FinancialTextFormField extends StatelessWidget {
  final String label;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final void Function(String?)? onChanged;
  final void Function()? onTap;

  const FinancialTextFormField({
    super.key,
    this.validator,
    this.controller,
    this.onChanged,
    this.onTap,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bodyMedium = theme.textTheme.bodyMedium;
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: bodyMedium?.copyWith(
          fontSize: 16,
          color: theme.colorScheme.outline,
        ),
      ),
    );
  }
}
