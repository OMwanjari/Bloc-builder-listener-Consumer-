import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<CounterIncrementEvent>(counterIncrementEvent);
    on<CounterDecreseEvent>(counterDecreseEvent);
  }

  int val = 0;

  FutureOr<void> counterIncrementEvent(
      CounterIncrementEvent event, Emitter<CounterState> emit) {
    val = val + 1;
    emit(CounterIncrementState(value: val));
  }

  FutureOr<void> counterDecreseEvent(
      CounterDecreseEvent event, Emitter<CounterState> emit) {
    val = val - 1;
    emit(CounterIncrementState(value: val));
  }
}
