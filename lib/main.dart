import 'package:flutter/material.dart';
import './SeconPage.dart';
import 'ListViewExe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Base app',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _textController = TextEditingController();
  String _displayText = 'Its Me Selman';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: _textController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Type here',
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    //Get data
                    setState(() {
                      _displayText = _textController.text;
                    });
                  },
                  child: const Text('Copy'),
                ),
                Text(
                  _displayText,
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 40,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SecondPage();
                        },
                      ),
                    );
                  },
                  child: const Text('Next Page'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ListViewExe()),
                    );
                  },
                  child: const Text('WhatsApp view'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
