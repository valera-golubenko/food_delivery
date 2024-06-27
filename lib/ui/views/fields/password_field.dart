import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/themes/app_theme.dart';
import 'package:food_delivery/ui/views/buttons/app_button.dart';

class PasswordField extends StatefulWidget {
  final GlobalKey<FormState>? formKey;
  final TextEditingController controller;
  final String? hintText;
  final String? errorText;
  final String? Function(String?)? validator;

  const PasswordField({
    super.key,
    this.formKey,
    required this.controller,
    this.hintText,
    this.errorText,
    this.validator,
  });

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  final _focus = FocusNode();

  bool _visibleInput = false;
  bool isNotEmpty = false;

  void _onTapOutside(PointerDownEvent pointerDownEvent) {
    final focused = _focus.hasFocus;

    if (focused) {
      _focus.unfocus();
      FocusScope.of(context).unfocus();
    }
  }

  @override
  void initState() {
    super.initState();
    isNotEmpty = widget.controller.text.isNotEmpty;
    widget.controller.addListener(() {
      setState(() {
        isNotEmpty = widget.controller.text.isNotEmpty;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: context.designs.greyScale.tone100,
      ),
      borderRadius: BorderRadius.circular(40),
      gapPadding: 1,
    );
    final focusedBorder = border.copyWith(
      borderSide: BorderSide(
        color: context.designs.prSkyBlue.tone600,
      ),
    );
    final focusedErrorBorder = border.copyWith(
      borderSide: BorderSide(
        color: context.designs.colorRed,
      ),
    );
    return TextFormField(
      controller: widget.controller,
      cursorColor: context.designs.colorText,
      focusNode: _focus,
      onTapOutside: _onTapOutside,
      obscureText: !_visibleInput,
      maxLengthEnforcement: MaxLengthEnforcement.truncateAfterCompositionEnds,
      style: context.textTheme.labelMedium?.copyWith(
        color: context.designs.greyScale.tone300,
      ),
      scrollPadding: const EdgeInsets.only(),
      validator: widget.validator,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
        suffixIcon: _buildSuffixIcon(),
        suffixIconConstraints: BoxConstraints.loose(const Size(28, 20)),
        hintText: widget.hintText,
        border: InputBorder.none,
        fillColor: context.designs.greyScale.tone900,
        filled: true,
        focusedBorder: focusedBorder,
        disabledBorder: border,
        errorBorder: border,
        focusedErrorBorder: focusedErrorBorder,
        enabledBorder: border,
        isDense: true,
        errorMaxLines: 3,
        counterStyle: context.textTheme.labelMedium?.copyWith(
          color: context.designs.greyScale.tone400,
        ),
        hintStyle: context.textTheme.labelMedium?.copyWith(
          color: context.designs.greyScale.tone400,
          fontSize: 12,
        ),
        errorText: widget.errorText,
      ),
    );
  }

  Widget _buildSuffixIcon() {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: AppButton(
        borderRadius: BorderRadius.circular(28),
        child: SvgPicture.asset(
          '',
          colorFilter: ColorFilter.mode(
            context.designs.greyScale.tone400,
            BlendMode.srcIn,
          ),
        ),
        onTap: () {
          setState(() {
            _visibleInput = !_visibleInput;
          });
        },
      ),
    );
  }
}
