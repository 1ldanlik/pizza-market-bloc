import 'package:flutter/material.dart';
import 'package:pizza_market_bloc/config.dart';

class PizzaMarketBlocTheme {
  static ThemeData get light {
    return ThemeData(
        primarySwatch: MaterialColor(Config.primaryWhiteColor.value, {
          50:Config.primaryWhiteColor.withOpacity(.1),
          100:Config.primaryWhiteColor.withOpacity(.2),
          200:Config.primaryWhiteColor.withOpacity(.3),
          300:Config.primaryWhiteColor.withOpacity(.4),
          400:Config.primaryWhiteColor.withOpacity(.5),
          500:Config.primaryWhiteColor.withOpacity(.6),
          600:Config.primaryWhiteColor.withOpacity(.7),
          700:Config.primaryWhiteColor.withOpacity(.8),
          800:Config.primaryWhiteColor.withOpacity(.9),
          900:Config.primaryWhiteColor.withOpacity(1),
        }),
      appBarTheme: const AppBarTheme(
        elevation: .0,
        color: Config.primaryWhiteColor
      )
    );
  }
}