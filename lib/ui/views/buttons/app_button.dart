import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Widget child;
  final bool splash;
  final VoidCallback? onTap;
  final BorderRadius? borderRadius;

  const AppButton({
    super.key,
    required this.onTap,
    required this.child,
    this.splash = true,
    this.borderRadius,
  });

  BorderRadius? get _borderRadius {
    if (borderRadius != null) return borderRadius;

    return BorderRadius.circular(4);
  }

  @override
  Widget build(BuildContext context) {
    final widget = InkWell(
      borderRadius: _borderRadius,
      onTap: onTap,
      child: splash ? null : child,
    );

    if (!splash) return widget;

    return Stack(
      children: [
        child,
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: widget,
          ),
        ),
      ],
    );
  }
}
