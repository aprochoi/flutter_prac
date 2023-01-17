part of 'counter_bloc.dart';

@immutable
class CounterState {
  // count할 상태 변수
  final int count;
  const CounterState(this.count);
}

class CounterInitial extends CounterState {

  // 상태 초기화 생성자
  const CounterInitial(super.count);
}

class CounterChange extends CounterState {

  // 상태 변경 생성자
  const CounterChange(super.count);
}