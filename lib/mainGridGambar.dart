import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageGridScreen(),
    );
  }
}

class ImageGridScreen extends StatelessWidget {
  final List<String> images = [
    'assets/appimages/indomie.png',
    'assets/appimages/kulkas.png',
    'assets/appimages/gitar.png',
    'assets/appimages/mouse.png',
    'assets/appimages/keyboard.png',
    'assets/appimages/laptop.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Galeri Gambar',
            ),
          ],
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Text(
              'Judul Gambar',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Jumlah kolom dalam grid
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return GridTile(
                    child: Image.asset(
                      images[index],
                      fit: BoxFit.cover,
                    ),
                    footer: GridTileBar(
                      backgroundColor: Colors.black54,
                      title: Text('Gambar ${index + 1}'),
                    ),
                  );
                },
              ),
            )
          ])),
    );
  }
}
