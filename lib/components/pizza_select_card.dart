import 'package:flutter/material.dart';
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
      padding: const EdgeInsets.all(Config.padding),
      child: ElevatedButton(
        style: ButtonStyle(
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
            Padding(
              padding: const EdgeInsets.all(Config.padding - 4,),
              child: Image.asset(
                image,
                width: 64,
              ),
            ),

            Expanded(
                child: Text(
                    title,
                  style: const TextStyle(
                    fontSize: Config.textMediumSize
                  ),
                ),
            ),

            Text(
              '\$$price',
              style: const TextStyle(
              color: Config.textPriceColor,
              fontSize: Config.textLargeSize,
            ),),

            const SizedBox(width: Config.padding * 2,),
          ],
        ),
      ),
    );
  }
}
