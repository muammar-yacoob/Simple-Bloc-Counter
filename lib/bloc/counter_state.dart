part of 'counter_bloc.dart';

class CounterState extends Equatable {
  final int currentCount;
  const CounterState({this.currentCount = 0});

  @override
  List<Object?> get props => [currentCount];
}

final class CounterInitial extends CounterState {}
