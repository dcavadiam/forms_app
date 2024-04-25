import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(counter: 0));

  //Metodos que emiten nuevos estados

  void increaseBy(int value) {
    emit(state.copyWith(
      counter: state.counter + value,
      transactionCount: state.transactionCount + value,
    ));
  }

  void reset() {
    emit(state.copyWith(
      counter: 0,
    ));
  }
}
