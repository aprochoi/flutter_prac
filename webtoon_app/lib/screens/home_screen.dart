import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:webtoon_app/models/webotoon._model.dart';
import 'package:webtoon_app/services/api_service.dart';

Logger logger = Logger(printer: PrettyPrinter(methodCount: 0));

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "오늘의 웹툰",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        foregroundColor: Colors.green,
        backgroundColor: Colors.white,
        elevation: 2,
      ),
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const Text('There is Data!');
          }
          return const Text("Loading...");
        },
      ),
    );
  }
}
