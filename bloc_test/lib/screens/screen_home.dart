import 'package:bloc_test/blocs/counter/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: BlocBuilder<CounterBloc, CounterState> (
        buildWhen: (previous, current) => previous.count != current.count,
        builder: (context, state) {
          return Center (
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Count : ${state.count}'),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/counter');
                    },
                    child: const Text('Go to CounterScreen'),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/api');
                    },
                    child: const Text('우편번호 검색'))
              ],
            ),
          );
        },
      ),
    );
  }
}
