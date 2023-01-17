import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_api_test/screens/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter App'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Count: $count', style: const TextStyle(fontSize: 25),),
            const Padding(padding: EdgeInsets.all(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: () {
                  if(count <= 0) {
                    Get.snackbar('알림', '0 미만으로 내릴 수 없습니다.');
                    return;
                  } else {
                    setState(() {
                      count--;
                    });
                  }
                }, icon: const Icon(Icons.remove)),
                IconButton(onPressed: () {
                  setState(() {
                    count++;
                  });
                }, icon: const Icon(Icons.add)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
