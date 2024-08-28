import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductGrid(),
    );
  }
}

class ProductGrid extends StatelessWidget {
  final List<String> images = [
    'assets/appimages/indomie.png',
    'assets/appimages/kulkas.png',
    'assets/appimages/mouse.png',
    'assets/appimages/keyboard.png',
    'assets/appimages/laptop.png',
    'assets/appimages/gitar.png',
  ];

  final List<String> productNames = [
    'Indomie',
    'Kulkas',
    'Mouse',
    'Keyboard',
    'Laptop',
    'Gitar',
  ];

  final List<String> descriptions = [
    'Indomie Gourmet adalah varian dari indomie yang diperkaya dengan bahan-bahan pilihan seperti bawang putih, kemuning, bawang merah, cabe merah, bawang bombay, dan cabe rawit.',
    'Kulkas adalah alat penyaring suhu yang digunakan untuk menyaring suhu di suatu ruangan.',
    'Mouse adalah perangkat input yang digunakan untuk mengontrol pergerakan kursor pada layar komputer.',
    'Keyboard adalah perangkat input yang digunakan untuk menginput teks ke dalam perangkat komputer.',
    'Laptop adalah komputer portabel yang cukup kecil dan berat untuk dikenakan tangan sehingga dapat dibawa ditempat-tempat.',
    'Gitar adalah alat musik yang dirancang untuk menghasilkan suara melalui pemutaran siring dan menggunakan gerakan tangan.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Produk'),
        backgroundColor: Colors.blueAccent,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Jumlah kolom
          crossAxisSpacing: 16, // Jarak antar kolom
          mainAxisSpacing: 16, // Jarak antar baris
        ),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ProductCard(
              index: index,
              images: images,
              productName: productNames[index],
              description: descriptions[index],
            ),
          );
        },
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final int index;
  final List<String> images;
  final String productName;
  final String description;

  ProductCard({required this.index, required this.images, required this.productName, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Gambar Produk
          Center(
            child: Image.asset(
              images[index],
              width: 150,
              height: 150,
            ),
          ),

          // Keterangan Produk
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Text(
              productName,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
          ),
          Text(
            description,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black54,
            ),
          ),

          // Harga Produk
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Text(
              'Rp ' + (150000 * (index + 1)).toString(),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),

          // Tombol Add to Cart
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  // Fungsi saat menekan tombol Add to Cart
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Ditambahkan ke Keranjang!'),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                ),
                child: Text(
                  'Add to Cart',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}




