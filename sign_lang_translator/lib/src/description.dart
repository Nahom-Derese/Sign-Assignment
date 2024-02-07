import 'package:flutter/material.dart';

class Discription extends StatelessWidget {
  static const String routeName = '/descrption';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          children: [
            Text('Sign'),
          ],
        ),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.blue[900],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.blue[900],
                ),
              ),
              Expanded(
                  flex: 4,
                  child: Container(
                    color: Colors.white,
                  )),
            ],
          ),
          Center(
            child: Column(
              children: [
                const SizedBox(height: 10),
                Container(
                  alignment: Alignment.topCenter,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  width: 300,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      )),
                  child: Hero(
                    tag: 'hero_picture',
                    child: Image.asset(
                      'assets/images/sign.png',
                      width: 270,
                      height: 300,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Description: The Sign means Thsi This This....",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Example: I love you more than the stars and sky....",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChoiceButton extends StatelessWidget {
  final String text;

  const ChoiceButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
        backgroundColor: Colors.blue[900],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: () {
        // Handle button press
      },
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
