import 'package:flutter/material.dart';
import 'package:flutter_todo_list/providers/news_api.dart';

import '../models/news.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  List<News> news = [];
  bool isLoading = true;
  NewsApi newsApi = NewsApi();

  Future initNews() async {
    news = await newsApi.getNews();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initNews().then((value) {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('뉴스 화면'),
          centerTitle: true,
        ),
        body: isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2 / 3,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: news.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(
                          news[index].title,
                          style: const TextStyle(fontSize: 18),
                        ),
                        Text(
                          news[index].description,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  );
                }));
  }
}
