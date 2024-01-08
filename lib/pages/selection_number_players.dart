import 'package:flutter/material.dart';
import 'package:magic_counter/components/counter.dart';
import 'package:magic_counter/components/simple_round_button.dart';

class SelectionNumberPlayers extends StatelessWidget {
  const SelectionNumberPlayers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Choose the number of players',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SimpleRoundButton(
                buttonText: '1',
                backgroundColor: const Color(0xFF2D2F8F),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Counter(
                        name: 'Player 1',
                        icon: Image.asset('assets/images/logo.png'),
                      ),
                    ),
                  );
                },
              ),
              const SimpleRoundButton(
                buttonText: '2',
                backgroundColor: Color(0xFF78278C),
              ),
              const SimpleRoundButton(buttonText: '3'),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SimpleRoundButton(buttonText: '4'),
              SimpleRoundButton(buttonText: '5'),
              SimpleRoundButton(buttonText: '6'),
            ],
          )
        ],
      ),
    );
  }
}
