import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  MyPage({Key? key}) : super(key: key);

  String name = 'Youngmin';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181818),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Hey, $name',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      'Welcome back',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 120,
            ),
            Text(
              'Total balance',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white.withOpacity(0.8),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              '\$5,194,482',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 48,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: const Color(
                        0xFFF2B33A,
                      ),
                      borderRadius: BorderRadius.circular(
                        45,
                      )),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 50,
                    ),
                    child: Text(
                      'Transfer',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
