import 'package:flutter/material.dart';
import 'package:pizza_market_bloc/components/pizza_order_card.dart';

class OrderDetailsPage extends StatefulWidget {
  const OrderDetailsPage({Key? key}) : super(key: key);

  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemBuilder: (context, index) {
            return Container();
              // PizzaOrderCard(
              //   image: image,
              //   title: title,
              //   price: price,
              //   onIncrement: onIncrement,
              //   onDecrement: onDecrement)
          }
      ),
    );
  }
}
