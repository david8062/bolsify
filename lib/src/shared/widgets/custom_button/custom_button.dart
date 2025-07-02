import 'package:bolsify/src/config/constants.dart';
import 'package:bolsify/src/config/theme/app_colors.dart';
import 'package:bolsify/src/config/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;

  const CustomButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.backgroundColor,
    this.textStyle,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? AppColors.secondary,
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        minimumSize: const Size(90, 48), // <-- tamaño fijo (ancho, alto)
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppConstants.buttonRadius),
        ),
        elevation: 3,
        shadowColor: Colors.black.withValues(alpha: 0.9),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: textStyle ?? AppTextStyles.button,
      ),
    );

  }
}
