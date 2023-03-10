import 'package:flutter/material.dart';

enum TIMERSTATUS {running, paused, stopped, resting}

class TimerScreen extends StatefulWidget {
  const TimerScreen({Key? key}) : super(key: key);


  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  static const WORK_SECONDS = 25;
  static const REST_SECONDS = 5;

  late TIMERSTATUS _timerStatus;
  late int _timer;
  late int _pomodoroCount;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _timerStatus = TIMERSTATUS.stopped;
    print(_timerStatus.toString());
    _timer = WORK_SECONDS;
    _pomodoroCount = 0;
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _runningButtons = [
      ElevatedButton(
          onPressed: () {},
          child: Text(
            1 == 2 ? '계속하기' : '일시정지',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        style: ElevatedButton.styleFrom(primary: Colors.blue),
      ),
      Padding(padding: EdgeInsets.all(20)),
      ElevatedButton(
          onPressed: () {},
          child: Text(
            '포기하기',
            style: TextStyle(fontSize: 16),
          ),
        style: ElevatedButton.styleFrom(
          primary: 1 == 2 ? Colors.green : Colors.blue,
        ),
      )
    ];

    final List<Widget> _stoppedButtons = [
      ElevatedButton(
          onPressed: () {},
          child: Text(
            '시작하기',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        style: ElevatedButton.styleFrom(
          primary: 1 == 2 ? Colors.green : Colors.blue,
        ),
      )
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('뽀모도로 타이머'), centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 0.6,
            child: Center(
              child: Text(
                '00:00',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: 1 == 2 ? Colors.green : Colors.blue,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: 1 == 2 ? const [] : 1 == 2 ? _stoppedButtons : _runningButtons,
          )
        ],
      ),
    );
  }
}

