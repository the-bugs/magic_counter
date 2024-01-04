import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'package:magic_counter/components/simple_round_button.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  item(String name, String value) {
    return Column(children: [
      Text(
        name,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
      Text(
        value,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Image'),
              Text(
                'Magic Counter',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          FutureBuilder(
            future: PackageInfo.fromPlatform(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              } else if (snapshot.hasData) {
                PackageInfo packageInfo = snapshot.data!;
                return Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      item('App Version', packageInfo.version),
                    ],
                  ),
                );
              } else {
                return const CircularProgressIndicator();
              }
            },
          ),
          const Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    SimpleRoundButton(
                      buttonText: 'License',
                      width: 200,
                    ),
                    SimpleRoundButton(
                      buttonText: 'Buy me a coffee',
                      width: 200,
                    ),
                    SimpleRoundButton(
                      buttonText: 'Source code',
                      width: 200,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Developed by \n @mathvictor and @devruso',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
