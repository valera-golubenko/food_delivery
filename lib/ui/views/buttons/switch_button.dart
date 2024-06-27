import 'package:flutter/material.dart';

import '../../../themes/app_theme.dart';

class CustomSwitch extends StatelessWidget {
  final bool initialValue;
  final ValueChanged<bool> onChanged;

  const CustomSwitch({
    super.key,
    this.initialValue = false,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final designs = context.designs;
    return GestureDetector(
      onTap: () {
        onChanged(!initialValue);
      },
      child: Container(
        width: 52,
        height: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: initialValue
              ? designs.greyScale.tone300
              : designs.greyScale.tone100,
        ),
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: AnimatedAlign(
            duration: const Duration(milliseconds: 250),
            alignment: initialValue //
                ? Alignment.centerRight
                : Alignment.centerLeft,
            child: Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: designs.greyScale.tone0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
