import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halaman Profil',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Halaman Profil'),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/appimages/indomie.png'),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Nama: Gilang Eka Pratama',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10.0),
                Text(
                  'NISN: 0063926027',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Jurusan: Rekayasa Perangkat Lunak',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Alamat: Jl. Cisaranten Kulon VII No. 33, Bandung',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Biodata: ',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Saya seorang siswa di SMK Negeri 13 Bandung jurusan Rekayasa Perangkat Lunak yang berasal dari Wonogiri. Saya memiliki banyak hobi seperti bermain sepeda, berenang, dan mendengarkan musik. Saya juga senang dengan bermain game seperti PUBG Mobile dan Mobile Legend.',
                  style: TextStyle(fontSize: 20.0, height: 1.5),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
