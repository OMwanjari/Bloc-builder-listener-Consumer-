part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent {}

class CounterIncrementEvent extends CounterEvent {}

class CounterDecreseEvent extends CounterEvent {}

class CounterShowSnackbarEvent extends CounterEvent {}
