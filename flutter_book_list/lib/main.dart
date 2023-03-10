import 'package:flutter/material.dart';
import 'package:flutter_book_list/screen/detail_screen.dart';
import 'package:flutter_book_list/screen/list_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book List APP',
      home: ListScreen(),
    );
  }
}

