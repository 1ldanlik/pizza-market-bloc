import 'package:flutter/material.dart';
import 'package:pizza_market_bloc/components/pizza_select_card.dart';

import '../api.dart';
import '../config.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final listOfDifferPizza = Api.getDifferentKindOfPizza();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pizza Market'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: ShaderMask(
                blendMode: BlendMode.srcATop,
                shaderCallback: (bounds) => const LinearGradient(
                  begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Config.mainIconColor, Config.bottomGradientIconColor]
                ).createShader(bounds),
                child: const ImageIcon(AssetImage('assets/icons/basket_icon.png')),
              )),
          IconButton(
              onPressed: () {},
              icon: ShaderMask(
                blendMode: BlendMode.srcATop,
                shaderCallback: (bounds) => const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Config.mainIconColor, Config.bottomGradientIconColor]
                ).createShader(bounds),
                child: const ImageIcon(AssetImage('assets/icons/person_icon.png')),
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Config.padding * 1.5),
        child: ListView(
              children: [
                for (var pizza in listOfDifferPizza)
                  PizzaSelectCard(
                      image: pizza.image,
                      title: pizza.title,
                      price: pizza.price
                  ),
              ],
            ),
      ),
    );
  }
}
