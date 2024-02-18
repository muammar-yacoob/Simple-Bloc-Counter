import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<CounterIncremented>((event, emit) {
      emit(CounterState(currentCount: state.currentCount + 1));
    });
    on<CounterDecremented>((event, emit) {
      if (state.currentCount <= 0) return;
      emit(CounterState(currentCount: state.currentCount - 1));
    });
  }
}
