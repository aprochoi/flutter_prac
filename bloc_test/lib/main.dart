import 'package:bloc_test/blocs/counter/counter_bloc.dart';
import 'package:bloc_test/screens/screen_api.dart';
import 'package:bloc_test/screens/screen_counter.dart';
import 'package:bloc_test/screens/screen_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CounterBloc(),
      child: MaterialApp(
        title: 'Flutter State BloC',
        routes: {
          '/': (context) => const HomeScreen(),
          '/counter': (context) => const CounterScreen(),
          '/api' : (context) => const AddrSearchZipCode(),
        },
        initialRoute: '/',
      ),
    );
  }
}
