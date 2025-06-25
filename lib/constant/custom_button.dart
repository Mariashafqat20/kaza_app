import 'package:flutter/material.dart';
import 'package:my_bookey/constant/custom_button_design.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final double? elevation;
  final EdgeInsetsGeometry? padding;
  final double? borderRadius;
  final double? width;
  final double? height;
  final Widget? icon;
  final bool isLoading;

  const CustomElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.elevation,
    this.padding,
    this.borderRadius,
    this.width,
    this.height,
    this.icon,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      width: width,
      height: height,
      child: CustomPaint(
        painter: CustomButtonDesign(),
        child: ElevatedButton(
          onPressed: isLoading ? null : onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor ?? theme.primaryColor,
            foregroundColor: textColor ?? theme.colorScheme.onPrimary,
            elevation: elevation ?? 2,
            padding: padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 8),
            ),
          ),
          child: isLoading
              ? const CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          )
              : icon != null
              ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon!,
              const SizedBox(width: 8),
              Text(
                text,
                style: theme.textTheme.labelLarge?.copyWith(
                  color: textColor ?? theme.colorScheme.onPrimary,
                ),
              ),
            ],
          )
              : Text(
            text,
            style: theme.textTheme.labelLarge?.copyWith(
              color: textColor ?? theme.colorScheme.onPrimary,
            ),
          ),
        ),
      ),
    );
  }
}