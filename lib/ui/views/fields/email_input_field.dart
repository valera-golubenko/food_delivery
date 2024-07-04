import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery/themes/app_theme.dart';

class EmailInputField extends StatefulWidget {
  final TextEditingController controller;
  final int? maxLength;
  final String? hintText;
  final String? errorText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool withBorder;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;
  final bool isDense;
  final int? maxLines;
  final TextInputType? textInputType;

  const EmailInputField({
    super.key,
    this.maxLength,
    required this.controller,
    this.hintText,
    this.errorText,
    this.prefixIcon,
    this.suffixIcon,
    this.withBorder = true,
    this.backgroundColor,
    this.borderRadius,
    this.isDense = true,
    this.maxLines = 1,
    this.textInputType,
  });

  @override
  State<EmailInputField> createState() => _EmailInputFieldState();
}

class _EmailInputFieldState extends State<EmailInputField> {
  final _focus = FocusNode();

  void _onTapOutside(PointerDownEvent pointerDownEvent) {
    final focused = _focus.hasFocus;

    if (focused) {
      _focus.unfocus();
      FocusScope.of(context).unfocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: !widget.withBorder
          ? BorderSide.none
          : BorderSide(
              color: Colors.black,
            ),
      borderRadius: widget.borderRadius ?? BorderRadius.circular(50),
      gapPadding: 1,
    );
    final focusedBorder = border.copyWith(
      borderSide: !widget.withBorder
          ? BorderSide.none
          : BorderSide(
              color: Colors.black,
            ),
    );
    final focusedErrorBorder = border.copyWith(
      borderSide: !widget.withBorder
          ? BorderSide.none
          : BorderSide(
              color: Colors.red,
            ),
    );

    return TextFormField(
      focusNode: _focus,
      onTapOutside: _onTapOutside,
      controller: widget.controller,
      cursorColor: context.designs.colorText,
      maxLines: widget.maxLines,
      maxLength: widget.maxLength,
      maxLengthEnforcement: MaxLengthEnforcement.truncateAfterCompositionEnds,
      style: context.textTheme.labelMedium?.copyWith(
        color: context.designs.greyScale.tone300,
      ),
      scrollPadding: const EdgeInsets.only(),
      keyboardType: widget.textInputType,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon,
        hintText: widget.hintText,
        border: InputBorder.none,
        fillColor: widget.backgroundColor ?? context.designs.greyScale.tone900,
        filled: true,
        focusedBorder: focusedBorder,
        disabledBorder: border,
        errorBorder: border,
        focusedErrorBorder: focusedErrorBorder,
        enabledBorder: border,
        isDense: widget.isDense,
        errorMaxLines: 3,
        counterStyle: context.textTheme.labelMedium?.copyWith(
          color: context.designs.greyScale.tone400,
        ),
        hintStyle: context.textTheme.labelMedium?.copyWith(
          fontSize: 12,
          color: context.designs.greyScale.tone400,
        ),
        errorText: widget.errorText,
      ),
    );
  }
}
