import 'package:flutter/material.dart';
import 'ProfileView.dart';

class ListViewExe extends StatelessWidget {
  const ListViewExe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Whatsapp view'),
      ),
      body: SafeArea(
          child: ListView.separated(
        itemBuilder: (ctx, index) {
          return ListTile(
            title: Text('PERSON $index'),
            subtitle: Text('Message $index'),
            leading: const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.green,
              backgroundImage: AssetImage('assets/images/macbook.jpg'),
            ),
            trailing: const Text('2:00PM'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) {
                    return ProfileView(name: 'Person $index');
                  },
                ),
              );
            },
          );
        },
        separatorBuilder: (ctx, index) {
          return const Divider();
        },
        itemCount: 30,
      )),
    );
  }
}
