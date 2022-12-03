import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pizza_market_bloc/theme/theme.dart';
import 'bloc/pizza_bloc.dart';
import 'screens/main_page/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PizzaBloc(),
      child: MaterialApp(
        theme: PizzaMarketBlocTheme.light,
        home: const MainPage(),
      ),
    );
  }
}
