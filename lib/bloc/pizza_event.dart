part of 'pizza_bloc.dart';

abstract class PizzaEvent extends Equatable {
  const PizzaEvent();

  @override
  List<Object> get props => [];
}

class Increment extends PizzaEvent {
  const Increment(this.pizza);

  final Pizza pizza;

  @override
  List<Object> get props => [pizza];
}

class Decrement extends PizzaEvent {
  const Decrement(this.pizza);

  final Pizza pizza;

  @override
  List<Object> get props => [pizza];
}