import 'package:flutter/material.dart';
import 'package:pizza_market_bloc/components/image_component.dart';
import 'package:pizza_market_bloc/config.dart';

class PizzaSelectCard extends StatelessWidget {
  final String image;
  final String title;
  final int price;

  const PizzaSelectCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: Config.padding / 2,
          vertical: Config.padding
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          padding: const MaterialStatePropertyAll(EdgeInsets.zero),
          backgroundColor: const MaterialStatePropertyAll(Config.primaryWhiteColor),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Config.mediumBorderRadius)
            ),
          ),
          elevation: const MaterialStatePropertyAll(.0),
        ),
        onPressed: () {

        },
        child: Row(
          children: [
            ImageComponent(image: image),

            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                    fontSize: Config.textLargeSize
                ),
              ),
            ),

            Text(
              '\$$price',
              style: const TextStyle(
                color: Config.textPriceColor,
                fontSize: Config.textTitleSize,
                fontWeight: FontWeight.w600,
              ),),

            const SizedBox(width: Config.padding * 2,),
          ],
        ),
      ),
    );
  }
}
