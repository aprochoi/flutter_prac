import 'package:flutter/material.dart';

class StepWidget extends StatelessWidget {
  final String number;
  final String msg;

  const StepWidget({Key? key, required this.number, required this.msg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('step',
                style: TextStyle(color: Colors.deepPurpleAccent),
            ),
            const SizedBox(width: 10,),
            Container(
              width: 20,
              height: 20,
              decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.deepPurple
              ),
              alignment:  Alignment.center,
              child: Text(
                number,
                style: const TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
        const SizedBox(height: 10,),
        Text(msg),
        const SizedBox(height: 10,),
        ],
    );
  }
}

