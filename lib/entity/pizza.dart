
import 'package:equatable/equatable.dart';

class Pizza extends Equatable{
  Pizza({
    required this.title,
    required this.image,
    required this.price
});

  String title;
  String image;
  int price;

  @override
  List<Object?> get props => [title, price];

}