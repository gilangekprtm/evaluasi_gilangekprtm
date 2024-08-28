import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bilangan Ganjil',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BilanganGanjil(),
    );
  }
}

class BilanganGanjil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bilangan Ganjil'),
      ),
      body: ListView.builder(
        itemCount: 31,
        itemBuilder: (context, index) {
          if (index % 2 != 0) {
            return ListTile(
              title: Text('Bilangan Ganjil: $index'),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
