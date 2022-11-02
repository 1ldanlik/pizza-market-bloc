
import 'package:equatable/equatable.dart';

class Pizza extends Equatable{
  Pizza({
    required this.title,
    required this.price
});

  String title;
  int price;

  @override
  List<Object?> get props => [title, price];

}