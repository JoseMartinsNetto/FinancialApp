import 'package:flutter/material.dart';

typedef OnChanged = void Function(String?)?;
typedef Validator = String? Function(String?)?;
typedef OnTap = void Function()?;

class FinancialPasswordTextFormField extends StatefulWidget {
  final String label;
  final Validator validator;
  final TextEditingController? controller;
  final OnChanged onChanged;
  final OnTap onTap;

  const FinancialPasswordTextFormField({
    super.key,
    this.validator,
    this.controller,
    this.onChanged,
    this.onTap,
    required this.label,
  });

  @override
  State<FinancialPasswordTextFormField> createState() => _FinancialPasswordTextFormFieldState();
}

class _FinancialPasswordTextFormFieldState extends State<FinancialPasswordTextFormField> {
  late ValueNotifier<bool> obscureText;

  String get label => widget.label;
  Validator get validator=> widget.validator;
  TextEditingController? get controller=> widget.controller;
  OnChanged get onChanged=> widget.onChanged;
  OnTap get onTap=> widget.onTap;

  @override
  void initState() {
    obscureText = ValueNotifier(true);
    super.initState();
  }

  void changeObscure(bool value) {
    obscureText.value = value;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bodyMedium = theme.textTheme.bodyMedium;
    return ValueListenableBuilder<bool>(
      valueListenable: obscureText,
      builder: (context, value, child) {
        return TextFormField(
          controller: controller,
          onChanged: onChanged,
          validator: validator,
          onTap: onTap,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          obscureText: value,
          decoration: InputDecoration(
            suffixIcon:  IconButton(
              onPressed: () => changeObscure(!value),
              icon: Icon(
                value ? Icons.visibility : Icons.visibility_off,
              ),
            ),
            labelText: label,
            labelStyle: bodyMedium?.copyWith(
              fontSize: 16,
              color: theme.colorScheme.outline,
            ),
          ),
        );
      }
    );
  }
}
