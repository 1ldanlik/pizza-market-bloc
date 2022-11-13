
import 'entity/pizza.dart';

class Api {

  static List<Pizza> getDifferentKindOfPizza() {
    return [
      Pizza(title: 'Original', image: 'assets/images/original.png', price: 8),
      Pizza(title: 'Buffalo', image: 'assets/images/buffalo.png', price: 10),
      Pizza(title: 'San Marzano', image: 'assets/images/san_marzano.png', price: 6),
      Pizza(title: 'Pepperoni', image: 'assets/images/pepperoni.png', price: 11),
      Pizza(title: 'Mexican', image: 'assets/images/mexican.png', price: 13),
    ];
  }
}