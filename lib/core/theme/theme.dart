import '../constant_finals.dart';
import 'package:flutter/material.dart';

final theme = ThemeData(
  appBarTheme: AppBarTheme(
    backgroundColor: kWhite,
    surfaceTintColor: Colors.transparent,
    titleTextStyle:
        Styles.kPublicSemiBoldHeadingThree.copyWith(color: kGrey900),
  ),
  colorScheme: ColorScheme.fromSeed(
    seedColor: kBlue,
  ),
  navigationBarTheme: NavigationBarThemeData(
    indicatorColor: kWhite.withOpacity(0 / 100),
    labelTextStyle: WidgetStateProperty.resolveWith(
      (Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return Styles.kPublicMediumBodyThree.copyWith(color: kBlue);
        }
        return Styles.kPublicMediumBodyThree.copyWith(color: kLightGrey300);
      },
    ),
  ),
  scaffoldBackgroundColor: kBackground,
);
