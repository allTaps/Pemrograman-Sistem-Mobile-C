import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'custom_text.dart';

class DetailPage extends StatelessWidget {
  final String nama;
  final String harga;

  const DetailPage({super.key, required this.nama, required this.harga});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          text: 'Detail Menu',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        backgroundColor: Colors.orange,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Get.back(), // Fungsi kembali ke daftar menu
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.fastfood, size: 80, color: Colors.orange),
              const SizedBox(height: 16),
              CustomText(
                text: nama,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 8),
              CustomText(
                text: 'Harga: Rp $harga',
                fontSize: 18,
                color: Colors.orange[800]!,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
