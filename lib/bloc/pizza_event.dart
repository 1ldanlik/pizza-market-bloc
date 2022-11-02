part of 'pizza_bloc.dart';

abstract class PizzaEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class Increment extends PizzaEvent {}

class Decrement extends PizzaEvent {}