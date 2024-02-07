import 'package:flutter/material.dart';

import 'widgets/common_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 24),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/tabs');
          },
          tooltip: 'Drawer',
          child: const Icon(
            Icons.apps,
            size: 45,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CommonButton(
              titleWidget: const Text(
                "Trascribe",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/transcribe');
              },
            ),
            CommonButton(
              titleWidget: const Text(
                "Others",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/tabs');
              },
            ),
          ],
        ),
      ),
    );
  }
}
