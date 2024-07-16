import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvents, int> {
  CounterBloc() : super(0) {
    on<CounterIncEventByTen>(_onIncByTen);
    on<CounterDecEventByTen>(_onDecByTen);
    on<CounterIncEventByOne>(_onIncByOne);
    on<CounterDecEventByOne>(_onDecByOne);
    on<CounterMakeZero>(_onMakeZero);
  }

  _onIncByTen(CounterIncEventByTen event, Emitter<int> emit) {
    emit(state + 10);
  }

  _onDecByTen(CounterDecEventByTen event, Emitter<int> emit) {
    emit(state - 10);
  }

  _onIncByOne(CounterIncEventByOne event, Emitter<int> emit) {
    emit(state + 1);
  }

  _onDecByOne(CounterDecEventByOne event, Emitter<int> emit) {
    emit(state - 1);
  }

  _onMakeZero(CounterMakeZero event, Emitter<int> emit) {
    emit(state - state);
  }
}

abstract class CounterEvents {}

class CounterIncEventByTen extends CounterEvents {}

class CounterDecEventByTen extends CounterEvents {}

class CounterIncEventByOne extends CounterEvents {}

class CounterDecEventByOne extends CounterEvents {}

class CounterMakeZero extends CounterEvents {}
