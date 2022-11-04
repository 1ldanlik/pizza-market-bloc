import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/pizza_bloc.dart';
import 'config.dart';
import 'screens/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PizzaBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: MaterialColor(Config.whiteAppBarColor.value, {
            50:Config.whiteAppBarColor.withOpacity(.1),
            100:Config.whiteAppBarColor.withOpacity(.2),
            200:Config.whiteAppBarColor.withOpacity(.3),
            300:Config.whiteAppBarColor.withOpacity(.4),
            400:Config.whiteAppBarColor.withOpacity(.5),
            500:Config.whiteAppBarColor.withOpacity(.6),
            600:Config.whiteAppBarColor.withOpacity(.7),
            700:Config.whiteAppBarColor.withOpacity(.8),
            800:Config.whiteAppBarColor.withOpacity(.9),
            900:Config.whiteAppBarColor.withOpacity(1),
          }),
        ),
        home: const MainPage(),
      ),
    );
  }
}
