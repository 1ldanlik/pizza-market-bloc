part of 'pizza_bloc.dart';

enum PizzaStatus {initial, loading, success}

class PizzaState extends Equatable {
  const PizzaState({
    this.status = PizzaStatus.initial,
    this.pizzaList = const <Pizza>[]
});

  final PizzaStatus status;
  final List<Pizza> pizzaList;

  PizzaState copyWith({
    PizzaStatus Function()? status,
    List<Pizza> Function()? pizzaList,
}) {
    return PizzaState(
      status: status != null ? status() : this.status,
      pizzaList: pizzaList != null ? pizzaList() : this.pizzaList,
    );
  }

  @override
  List<Object> get props => [
    status,
    pizzaList,
  ];
}

