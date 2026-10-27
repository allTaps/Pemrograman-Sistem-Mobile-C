import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Alasan Desain: Memilih font Poppins karena memiliki karakteristik sans-serif yang modern,
// bersih, serta sangat mudah dibaca untuk aplikasi mobile kuliner/kantin. Pewarnaan dan ukuran
// dikustomisasi secara dinamis agar fleksibel diterapkan di berbagai elemen antarmuka aplikasi.
class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  const CustomText({
    super.key,
    required this.text,
    this.fontSize = 14.0,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.black87,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
