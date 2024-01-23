import 'package:ecomapp/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.green400,
                  borderRadius: BorderRadius.circular(12.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillOrange => BoxDecoration(
        color: appTheme.orange100,
        borderRadius: BorderRadius.circular(12.h),
      );
  static BoxDecoration get fillOrangeTL12 => BoxDecoration(
        color: appTheme.orange50,
        borderRadius: BorderRadius.circular(12.h),
      );
  static BoxDecoration get fillOrangeTL16 => BoxDecoration(
        color: appTheme.orange50,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillYellow => BoxDecoration(
        color: appTheme.yellow5001,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillGreenTL20 => BoxDecoration(
        color: appTheme.green400,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(24.h),
      );
}
