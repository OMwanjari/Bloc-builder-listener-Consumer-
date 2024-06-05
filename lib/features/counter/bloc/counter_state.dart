part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

class CounterIncrementState extends CounterState {
  final int value;

  CounterIncrementState({required this.value});
}
