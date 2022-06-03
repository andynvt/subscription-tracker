import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:subscription_tracker/res/res.dart';

class TTButton extends StatelessWidget {
  final String? text;
  final Widget? child;
  final bool hasShadow;
  final Gradient? gradient;
  final Color? backgroundColor;
  final double strokeWidth;
  final double height;
  final double borderRadius;
  final Color shadowColor;
  final VoidCallback? onPressed;

  const TTButton({
    Key? key,
    this.text,
    this.gradient,
    this.child,
    this.hasShadow = false,
    this.backgroundColor,
    this.strokeWidth = 1,
    this.height = 48,
    this.shadowColor = Colors.transparent,
    this.borderRadius = 30,
    this.onPressed,
  }) : super(key: key);

  factory TTButton.shadow({
    String? text,
    Color? startColor,
    Color? endColor,
    Color? backgroundColor,
    Color? shadowColor,
    double? borderRadius,
    double? height,
    double? strokeWidth,
    Widget? child,
    VoidCallback? onPressed,
  }) {
    return TTButton(
      text: text,
      gradient: LinearGradient(
        colors: [
          startColor ?? Cl.colorFFFFFF.withOpacity(0.5),
          endColor ?? Cl.colorFFFFFF.withOpacity(0),
        ],
      ),
      hasShadow: true,
      backgroundColor: backgroundColor ?? Cl.colorFF7966,
      borderRadius: borderRadius ?? 30,
      child: child,
      height: height ?? 48,
      shadowColor: shadowColor ?? Cl.colorFF7966,
      strokeWidth: strokeWidth ?? 1,
      onPressed: onPressed,
    );
  }

  @override
  Widget build(BuildContext context) {
    return OutlineGradientButton(
      inkWell: true,
      onTap: onPressed,
      backgroundColor: backgroundColor ?? Cl.colorFFFFFF.withOpacity(0.1),
      padding: EdgeInsets.zero,
      gradient: gradient ??
          LinearGradient(
            colors: [
              Cl.colorFFFFFF.withOpacity(0.15),
              Cl.colorFFFFFF.withOpacity(0),
            ],
          ),
      radius: Radius.circular(borderRadius),
      strokeWidth: strokeWidth,
      child: Container(
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: hasShadow
              ? [
                  BoxShadow(
                    offset: const Offset(0, 8),
                    blurRadius: 25,
                    color: shadowColor.withOpacity(0.5),
                  ),
                ]
              : [],
        ),
        child: child ??
            Center(
              child: Text(
                text ?? '',
                style: St.body14600,
              ),
            ),
      ),
    );
  }
}
