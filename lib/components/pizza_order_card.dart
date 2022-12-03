import 'package:flutter/material.dart';

import '../config.dart';

class PizzaOrderCard extends StatefulWidget {
  final String image;
  final String title;
  final int price;
  final Function() onIncrement;
  final Function() onDecrement;

  const PizzaOrderCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.onIncrement,
    required this.onDecrement,
  }) : super(key: key);

  @override
  State<PizzaOrderCard> createState() => _PizzaOrderCardState();
}

class _PizzaOrderCardState extends State<PizzaOrderCard> {

  int pizzaCount = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: Config.padding / 2,
          vertical: Config.padding
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Config.mediumBorderRadius),
          color: Config.primaryWhiteColor,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(Config.padding - 4,),
              child: Image.asset(
                widget.image,
                width: 64,
              ),
            ),

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                        fontSize: Config.textLargeSize
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    '\$${widget.price}',
                    style: const TextStyle(
                      fontSize: Config.textLargeSize,
                      color: Config.textPriceColor,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    color: Config.lightIconColor,
                    borderRadius: BorderRadius.circular(Config.smallBorderRadius),
                  ),
                  alignment: Alignment.center,
                  child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        pizzaCount != 0 ? pizzaCount-- : null;
                        setState(() {});
                      },
                      icon: const Icon(
                        Icons.remove,
                        color: Config.mainIconColor,)
                  ),
                ),

                const SizedBox(width: Config.padding / 2,),

                Text(
                  "$pizzaCount",
                  style: const TextStyle(
                    fontSize: Config.textMediumSize,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(width: Config.padding / 2,),

                Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    color: Config.mainIconColor,
                    borderRadius: BorderRadius.circular(Config.smallBorderRadius),
                  ),
                  alignment: Alignment.center,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      pizzaCount >= 0 ? pizzaCount++ : null;
                      setState(() {});
                    },
                    icon: const Icon(
                      Icons.add,
                      color: Config.primaryWhiteColor,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(width: Config.padding * 2,),
          ],
        ),
      ),
    );
  }
}
