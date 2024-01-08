import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  final String name;
  final Image? icon;
  final Function? onPressed;

  const Counter({
    super.key,
    this.icon,
    this.onPressed,
    required this.name,
  });

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = -998;

  get counterColor => null;

  void _increment() {
    setState(() {
      if (count < 999) {
        count++;
      }
    });
  }

  void _decrement() {
    setState(() {
      if (count > -999) {
        count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20,
      height: 20,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Counter\'s name ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                child: TextButton(
                  onPressed: _increment,
                  style: TextButton.styleFrom(
                    shape: const CircleBorder(
                      side: BorderSide(
                        color: Colors.white,
                        width: 1,
                        style: BorderStyle.solid,
                      ),
                    ),
                    foregroundColor: Colors.white,
                  ),
                  child: const Text(
                    '+',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  bottom: 8.0,
                  left: 10.0,
                  right: 10.0,
                ),
                child: Text(
                  count.toString(),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 80,
                    color: count < 0 ? Colors.red : Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                child: TextButton(
                  onPressed: _decrement,
                  style: TextButton.styleFrom(
                    shape: const CircleBorder(
                      side: BorderSide(
                        color: Colors.white,
                        width: 1,
                        style: BorderStyle.solid,
                      ),
                    ),
                    foregroundColor: Colors.white,
                  ),
                  child: const Text(
                    '-',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Icon',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
