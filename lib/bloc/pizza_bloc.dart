import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../entity/pizza.dart';

part 'pizza_event.dart';
part 'pizza_state.dart';

class PizzaBloc extends Bloc<PizzaEvent, PizzaState> {
  PizzaBloc() : super(const PizzaState()) {
    on<Increment>((event, emit) {
    });
    on<Decrement>((event, emit) {
    });
  }
}
