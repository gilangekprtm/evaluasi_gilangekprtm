import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Luas Segitiga',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: LuasSegitigaPage(),
    );
  }
}

class LuasSegitigaPage extends StatefulWidget {
  @override
  _LuasSegitigaPageState createState() => _LuasSegitigaPageState();
}

class _LuasSegitigaPageState extends State<LuasSegitigaPage> {
  double _alas = 0;
  double _tinggi = 0;
  double _luas = 0;

  void _hitungLuas() {
    setState(() {
      _luas = 0.5 * _alas * _tinggi;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Luas Segitiga'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Alas'),
              onChanged: (value) {
                setState(() {
                  _alas = double.parse(value);
                });
              },
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Tinggi'),
              onChanged: (value) {
                setState(() {
                  _tinggi = double.parse(value);
                });
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              child: Text('Hitung'),
              onPressed: _hitungLuas,
            ),
            SizedBox(height: 16.0),
            Text(
              'Luas: ${_luas.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
