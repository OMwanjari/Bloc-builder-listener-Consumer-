import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<CounterIncrementEvent>(counterIncrementEvent);
    on<CounterDecreseEvent>(counterDecreseEvent);
    on<CounterShowSnackbarEvent>(counterShowSnackbarEvent);
  }

  int val = 0;

  FutureOr<void> counterIncrementEvent(
      CounterIncrementEvent event, Emitter<CounterState> emit) {
    emit(CounterIncrementActionState());
  }

  FutureOr<void> counterDecreseEvent(
      CounterDecreseEvent event, Emitter<CounterState> emit) {
    emit(CounterDecreaseActionState());
  }

  FutureOr<void> counterShowSnackbarEvent(
      CounterShowSnackbarEvent event, Emitter<CounterState> emit) {
    emit(CounterShowSnackbarActionState());
  }
}
