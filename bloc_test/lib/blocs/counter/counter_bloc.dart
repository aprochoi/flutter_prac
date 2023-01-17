import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {

  // CountBloc 내부 CounterState의 count 값을 생성자로 초기화한다.
  CounterBloc() : super(const CounterInitial(0)) {

    // on 이벤트 핸들러 형태로 이벤트를 보내고 상태를 변경하도록 정의한다.
    on<CounterIncrement>((event, emit) => emit(CounterChange(state.count + 1)),
    );
    on<CounterDecrement>((event, emit) => emit(CounterChange(state.count - 1)),
    );
  }
}
