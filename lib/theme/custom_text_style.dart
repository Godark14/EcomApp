import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBluegray600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray600,
      );
  static get bodyMediumBluegray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodyMediumYellow900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.yellow900,
      );
  // Headline text style
  static get headlineSmallBadScript =>
      theme.textTheme.headlineSmall!.badScript.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallPrimaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get headlineSmallPrimaryContainerRegular =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w400,
      );
  // Title text style
  static get titleLargeOnError => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onError,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeff27214d => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFF27214D),
      );
  static get titleLargeff27214dRegular => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFF27214D),
        fontWeight: FontWeight.w400,
      );
  static get titleMediumBluegray300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray300,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
}

extension on TextStyle {
  TextStyle get badScript {
    return copyWith(
      fontFamily: 'Bad Script',
    );
  }

  TextStyle get brandonGrotesque {
    return copyWith(
      fontFamily: 'Brandon Grotesque',
    );
  }
}
