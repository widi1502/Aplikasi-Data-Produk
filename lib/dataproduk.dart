import 'package:flutter/material.dart';
import 'package:flutter_application_3/komponen.dart';

class DesainDataProduk extends StatefulWidget {
  const DesainDataProduk({super.key});

  @override
  State<DesainDataProduk> createState() => _DesainDataProdukState();
}

class _DesainDataProdukState extends State<DesainDataProduk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Produk'),
        backgroundColor: const Color.fromARGB(255, 245, 181, 203),
      ),
      body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ListField(namaBarang: 'Mesin Cuci', harga: '2000000', number: '1'),
                  ListField(namaBarang: 'Tv', harga: '3000000', number: '2'),
                  ListField(namaBarang: 'Laptop', harga: '10000000', number: '3'),
                  ListField(namaBarang: 'Kipas Angin', harga: '200000', number: '4'),
                  ListField(namaBarang: 'AC', harga: '3000000', number: '5'),
                  ListField(namaBarang: 'Oven', harga: '1000000', number: '6'),
                  ListField(namaBarang: 'Kulkas', harga: '3000000', number: '7'),
                  ListField(namaBarang: 'Setrika', harga: '200000', number: '8'),
                  ListField(namaBarang: 'Magic Com', harga: '700000', number: '9'),
                  ListField(namaBarang: 'Blender', harga: '500000', number: '10'),
                ],
              ),
            ),
          ),
    );
  }
}