import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:musicplayer/core/theme/theme_helper.dart';

class CustomTextField extends ConsumerWidget {
  final String hintText;
  final String? headText;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final bool obscureText;
  final void Function(String)? onChanged;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.headText,
    this.prefixIcon,
    this.controller,
    this.obscureText = false,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final spaces = AppTheme.of(context).spaces;
    final typography = AppTheme.of(context).typography;
    final colors = AppTheme.of(context).colors;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (headText != null)
          Padding(
            padding: EdgeInsets.only(bottom: spaces.space_100),
            child: Text(
              headText!,
              style: typography.h500,
            ),
          ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 0,
            vertical: 50,
          ),
          child: TextFormField(
            obscureText: obscureText,
            controller: controller,
            cursorColor: colors.backgroundLight,
            onChanged: onChanged,
            decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(51, 158, 158, 158),
              prefixIconColor: colors.backgroundLight,
              prefixIcon: prefixIcon,
              hintText: hintText,
              hintStyle: TextStyle(color: colors.backgroundLight),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: spaces.space_200),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(spaces.space_125),
                borderSide: const BorderSide(width: 1, color: Colors.red),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(spaces.space_125),
                borderSide: const BorderSide(width: 1, color: Colors.red),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(spaces.space_125),
                borderSide: const BorderSide(width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(spaces.space_125),
                borderSide: const BorderSide(width: 1),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
