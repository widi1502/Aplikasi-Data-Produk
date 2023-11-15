import 'package:flutter/material.dart';

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
    );
  }
}