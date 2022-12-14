import 'package:flutter/material.dart';
import 'package:pizza_market_bloc/components/image_component.dart';

import '../config.dart';
import '../styles.dart';
import 'custom_text_field.dart';

class AddPizzaCard extends StatefulWidget {

  final String image;
  final String title;
  final int price;

  const AddPizzaCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
  }) : super(key: key);

  @override
  State<AddPizzaCard> createState() => _AddPizzaCardState();
}

class _AddPizzaCardState extends State<AddPizzaCard> {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

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
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.08),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(10, 15),
            ),
          ],
        ),
        child: Row(
          children: [
            ImageComponent(image: widget.image),

            Expanded(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: Config.padding * 2,),

                  Text('Name', style: Styles.textLargeSemiBoldStyle,),

                  CustomTextField(controller: _nameController,),

                  const SizedBox(height: Config.padding * 1.5,),

                  Text('Price', style: Styles.textLargeSemiBoldStyle,),

                  CustomTextField(controller: _priceController,),

                  const SizedBox(height: Config.padding * 2,),
                ],
              ),
            ),

            const SizedBox(width: Config.padding,),

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
