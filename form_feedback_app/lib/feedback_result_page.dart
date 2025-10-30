import 'package:flutter/material.dart';

class FeedbackResultPage extends StatelessWidget {
  final String nama;
  final String komentar;
  final int rating;

  const FeedbackResultPage({
    super.key,
    required this.nama,
    required this.komentar,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7EFE5), // krem lembut
      appBar: AppBar(
        title: const Text('Hasil Feedback'),
        centerTitle: true,
        backgroundColor: const Color(0xFF795548), // cokelat utama
        foregroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
        elevation: 3,
      ),
      body: Center(
        child: Card(
          color: const Color(0xFFFFF3E0), // cokelat muda / krem
          elevation: 5,
          margin: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Nama: $nama',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4E342E), // cokelat tua
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Komentar: $komentar',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xFF5D4037),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Rating: $rating / 5',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xFF8D6E63), // cokelat menengah
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton.icon(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  label: const Text(
                    'Kembali',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF6D4C41), // cokelat tombol
                    padding:
                        const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 3,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
