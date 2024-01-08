import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'package:magic_counter/shared/constants/app_colors.dart';
import 'package:magic_counter/components/simple_round_button.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  item(String name, String value) {
    return Column(children: [
      Text(
        name,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.black,
        ),
      ),
      Text(
        value,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.black,
        ),
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 90,
                height: 120,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 20,
              bottom: 10,
            ),
            child: Text(
              'Magic Counter',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          FutureBuilder(
            future: PackageInfo.fromPlatform(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              } else if (snapshot.hasData) {
                PackageInfo packageInfo = snapshot.data!;
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    item('App Version', packageInfo.version),
                  ],
                );
              } else {
                return const CircularProgressIndicator();
              }
            },
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    const SimpleRoundButton(
                      buttonText: 'License',
                      width: 200,
                    ),
                    const SimpleRoundButton(
                      buttonText: 'Buy me a coffee',
                      width: 200,
                    ),
                    const SimpleRoundButton(
                      buttonText: 'Source code',
                      width: 200,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'This app is not affiliated with \n Wizards of the Coast LLC.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SimpleRoundButton(
                      buttonText: 'Wizards of the Coast\'s Fan Content Policy',
                      width: 200,
                      height: 50,
                      backgroundColor: AppColors.warningColor,
                      fontSize: 14,
                      onPressed: () async {
                        if (await canLaunchUrl(
                          Uri(
                              scheme: 'https',
                              host: 'company.wizards.com',
                              path: '/en/legal/fancontentpolicy'),
                        )) {
                        } else {
                          throw 'Could not launch the url';
                        }
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 16.0,
                      ),
                      child: Text(
                        'Developed by \n @mathvictor and @devruso',
                        textAlign: TextAlign.center,
                      ),
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
