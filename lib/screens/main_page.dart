import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/pizza_bloc.dart';
import '../config.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pizza Market'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: ShaderMask(
                blendMode: BlendMode.srcATop,
                shaderCallback: (bounds) => LinearGradient(
                  begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Config.topIconColor, Config.topIconColor]
                ).createShader(bounds),
                child: const ImageIcon(AssetImage('assets/basket_icon.png')),
              )),
          IconButton(
              onPressed: () {},
              icon: ShaderMask(
                blendMode: BlendMode.srcATop,
                shaderCallback: (bounds) => LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Config.topIconColor, Config.topIconColor]
                ).createShader(bounds),
                child: const ImageIcon(AssetImage('assets/person_icon.png')),
              )),
        ],
      ),
      body: BlocBuilder<PizzaBloc, PizzaState>(
        builder: (context, state) {
          if (state.pizzaList.isEmpty) {
            return const Center(
              child: Text('No pizza there'),
            );
          }

          return ListView(
            children: [
              for (final pizza in state.pizzaList)
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Config.whiteCardColor)),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Image.asset(
                          pizza.image,
                          width: 64,
                        ),
                        Text(pizza.title),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Text(pizza.price.toString())
                        )
                      ],
                    ))
            ],
          );
        },
      ),
    );
  }
}
