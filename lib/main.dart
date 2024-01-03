import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(''),
            fit: BoxFit.cover,
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'There will be an image here',
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 60,
                bottom: 20,
              ),
              child: Text(
                'Magic Counter',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SimpleButton(
                  text: 'Start',
                ),
                SizedBox(
                  width: 40,
                ),
                SimpleButton(
                  text: 'About',
                  color: Colors.red,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SimpleButton extends StatelessWidget {
  final String text;
  final int? width, height;
  final Color? color;

  const SimpleButton({
    super.key,
    required this.text,
    this.width,
    this.height,
    this.color,
  });

  void testButton() {
    print('Button clicked!');
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: color == null ? Colors.blue : color!,
        fixedSize: Size(
          width == null ? 80 : width!.toDouble(),
          height == null ? 20 : height!.toDouble(),
        ),
        foregroundColor: Colors.white,
      ),
      onPressed: () => testButton(),
      child: Text(text),
    );
  }
}
