import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_page.dart'; // Import halaman utama

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // WAJIB Menggunakan GetMaterialApp agar fungsi Get.to() bisa berjalan
    return GetMaterialApp(
      title: 'Warung Uncle Muthu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(), // Mengarah ke Soal 2
      debugShowCheckedModeBanner: false,
    );
  }
}
