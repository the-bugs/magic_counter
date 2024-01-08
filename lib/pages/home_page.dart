import 'package:flutter/material.dart';

import 'package:magic_counter/components/simple_round_button.dart';
import 'package:magic_counter/pages/about_page.dart';
import 'package:magic_counter/shared/constants/app_colors.dart';
import 'package:magic_counter/pages/selection_number_players.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                width: 150,
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const Text(
              'Magic Counter',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SimpleRoundButton(
                    buttonText: 'Start',
                    width: 300,
                    height: 60,
                    backgroundColor: AppColors.primaryColor,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SelectionNumberPlayers(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            SimpleRoundButton(
              buttonText: 'About',
              width: 300,
              height: 60,
              backgroundColor: AppColors.secondaryColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
