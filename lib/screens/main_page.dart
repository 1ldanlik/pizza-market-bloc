import 'package:flutter/material.dart';

import '../api.dart';
import '../components/add_pizza_card.dart';
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
      body: ListView(
            children: [
              for (var pizza in listOfDifferPizza)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: Config.padding),
                  child: AddPizzaCard(
                      image: pizza.image,
                      title: pizza.title,
                      price: pizza.price
                  ),
                ),
            ],
          ),
    );
  }
}
