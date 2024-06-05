part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

abstract class CounterActionState extends CounterState {}

final class CounterInitial extends CounterState {}

class CounterIncrementState extends CounterState {
  final int value;

  CounterIncrementState({required this.value});
}

class CounterIncrementActionState extends CounterState {}

class CounterDecreaseActionState extends CounterState {}

class CounterShowSnackbarActionState extends CounterActionState {}
