
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../entity/pizza.dart';

part 'pizza_event.dart';

part 'pizza_state.dart';

class PizzaBloc extends Bloc<PizzaEvent, PizzaState> {
  PizzaBloc() : super(const PizzaState()) {
    on<Increment>(_onIncrement);
    on<Decrement>(_onDecrement);
  }

  void _onIncrement(Increment event, Emitter<PizzaState> emit) {
    final List<Pizza> pizzaList = state.pizzaList;
    pizzaList.add(event.pizza);
    emit(state.copyWith(
        pizzaList: () => pizzaList, status: () => PizzaStatus.success));
  }

  void _onDecrement(Decrement event, Emitter<PizzaState> emit) {
    final List<Pizza> pizzaList = state.pizzaList;
    pizzaList.remove(event.pizza);
    emit(
        state.copyWith(
        pizzaList: () => pizzaList,
        status: () => PizzaStatus.success
    )
    );
  }
}
