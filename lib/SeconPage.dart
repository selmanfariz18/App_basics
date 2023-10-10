import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SecondPage extends StatelessWidget {
  SecondPage({Key? key}) : super(key: key);

  String name = 'Selmanul Farizy';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              color: Colors.blueAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Click',
                              style: TextStyle(
                                color: Colors.redAccent,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.mic),
                          )
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Click'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.redAccent,
              child: Column(
                children: [
                  Text(
                    name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text('Click'),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.mic),
                      )
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Click'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
