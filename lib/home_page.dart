import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'custom_text.dart';
import 'tambah_page.dart';
import 'detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Data menu awal (minimal 5 data berbentuk Map sesuai ketentuan bebas)
  final List<Map<String, String>> daftarMenu = [
    {'nama': 'Nasi Goreng Kantin', 'harga': '15000'},
    {'nama': 'Ayam Geprek Cadas', 'harga': '18000'},
    {'nama': 'Indomie Rendang', 'harga': '10000'},
    {'nama': 'Es Teh Manis Jumbo', 'harga': '5000'},
    {'nama': 'Bakwan', 'harga': '2000'},
  ];

  @override
  Widget build(BuildContext context) {
    // Hierarki Widget Sesuai Gambar 1: Scaffold -> AppBar, Column, FloatingActionButton
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          text: 'Daftar Menu Warung',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        backgroundColor: Color.fromARGB(255, 221, 56, 10),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: CustomText(
              text: 'Menu Tersedia Hari Ini:',
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: daftarMenu.length,
              itemBuilder: (context, index) {
                final menu = daftarMenu[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  elevation: 2,
                  child: ListTile(
                    leading: const Icon(Icons.fastfood, color: Colors.orange),
                    title: CustomText(
                      text: menu['nama'] ?? '',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    subtitle: CustomText(
                      text: 'Rp ${menu['harga']}',
                      color: Colors.grey[700]!,
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      // Navigasi ke halaman detail menggunakan Get.to()
                      Get.to(() => DetailPage(
                            nama: menu['nama'] ?? '',
                            harga: menu['harga'] ?? '',
                          ));
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 221, 56, 10),
        onPressed: () async {
          // Menunggu hasil data balik (result) dari halaman tambah menu menggunakan Get.to()
          final hasilBaru = await Get.to(() => const TambahPage());
          if (hasilBaru != null && hasilBaru is Map<String, String>) {
            setState(() {
              daftarMenu.add(hasilBaru);
            });
          }
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
