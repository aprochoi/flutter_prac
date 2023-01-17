import 'package:bloc_test/blocs/counter/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: BlocBuilder<CounterBloc, CounterState> (
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Counter : ${state.count}'),
                ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<CounterBloc>(context).add(const CounterIncrement());
                    },
                    child: const Icon(Icons.add),
                ),
                ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<CounterBloc>(context).add(const CounterDecrement());
                    },
                    child: const Icon(Icons.remove),
                ),
              ],
            ),
          );
        },
      )
    );
  }
}
