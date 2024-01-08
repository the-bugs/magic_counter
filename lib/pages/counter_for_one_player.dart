import 'package:flutter/material.dart';
import 'package:magic_counter/components/counter.dart';

class CounterForOnePlayer extends StatefulWidget {
  const CounterForOnePlayer({super.key});

  @override
  State<CounterForOnePlayer> createState() => _CounterForOnePlayerState();
}

class _CounterForOnePlayerState extends State<CounterForOnePlayer> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Column(
        children: [
          Counter(
            name: 'Player 1',
          )
        ],
      ),
    ));
  }
}
