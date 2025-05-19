// ignore_for_file: sort_child_properties_last

import 'dart:async';

import 'package:flutter/material.dart';

class TimerBasic extends StatefulWidget {
  const TimerBasic({super.key});

  @override
  State<TimerBasic> createState() => _TimerBasicState();
}

class _TimerBasicState extends State<TimerBasic> {
  int timeleft = 5;

  void _startCountDown() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (timeleft > 0) {
        setState(() {
          timeleft--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              timeleft == 0 ? "Done" : timeleft.toString(),
              style: TextStyle(fontSize: 74),
            ),
            MaterialButton(
              onPressed: () {
                _startCountDown();
              },
              child: Text("S T A R T", style: TextStyle(color: Colors.white)),
              color: Colors.deepPurple,
            ),
          ],
        ),
      ),
    );
  }
}
