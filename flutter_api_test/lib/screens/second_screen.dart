import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String screenData;
  const SecondScreen({Key? key, required this.screenData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('screenData : $screenData'),
            OutlinedButton(onPressed: () {
              Navigator.of(context).pop();
            }, child: const Text('Go to First Screen')),
          ],
        ),
      ),
    );
  }
}
