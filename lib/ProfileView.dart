import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  final String name;
  const ProfileView({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List view'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text(name),
          ],
        ),
      ),
    );
  }
}
