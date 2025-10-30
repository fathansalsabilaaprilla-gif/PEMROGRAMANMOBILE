import 'package:flutter/material.dart';
import 'feedback_result_page.dart';

class FeedbackFormPage extends StatefulWidget {
  const FeedbackFormPage({super.key});

  @override
  State<FeedbackFormPage> createState() => _FeedbackFormPageState();
}

class _FeedbackFormPageState extends State<FeedbackFormPage> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _komentarController = TextEditingController();
  double _rating = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7EFE5), // krem lembut
      appBar: AppBar(
        title: const Text('Formulir Feedback'),
        centerTitle: true,
        backgroundColor: const Color(0xFF795548), // cokelat tua
        foregroundColor: Colors.white,
        elevation: 3,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Nama:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xFF4E342E), // cokelat gelap
                ),
              ),
              TextField(
                controller: _namaController,
                decoration: InputDecoration(
                  hintText: 'Masukkan nama Anda',
                  filled: true,
                  fillColor: const Color(0xFFFFF3E0), // krem muda
                  prefixIcon: const Icon(Icons.person, color: Color(0xFF6D4C41)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Color(0xFF8D6E63)),
                  ),
                ),
                onChanged: (_) => setState(() {}),
              ),
              const SizedBox(height: 20),

              const Text(
                'Komentar:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xFF4E342E),
                ),
              ),
              TextField(
                controller: _komentarController,
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: 'Masukkan komentar Anda',
                  filled: true,
                  fillColor: const Color(0xFFFFF3E0),
                  prefixIcon:
                      const Icon(Icons.comment, color: Color(0xFF6D4C41)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Color(0xFF8D6E63)),
                  ),
                ),
                onChanged: (_) => setState(() {}),
              ),
              const SizedBox(height: 20),

              Text(
                'Rating (1–5): ${_rating.toInt()}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xFF4E342E),
                ),
              ),
              Slider(
                value: _rating,
                min: 1,
                max: 5,
                divisions: 4,
                activeColor: const Color(0xFF8D6E63), // cokelat medium
                inactiveColor: const Color(0xFFD7CCC8),
                label: _rating.toInt().toString(),
                onChanged: (value) {
                  setState(() {
                    _rating = value;
                  });
                },
              ),
              const SizedBox(height: 30),

              // Preview feedback
              Card(
                color: const Color(0xFFFFF3E0),
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Preview Feedback Anda:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(0xFF4E342E),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Nama: ${_namaController.text.isEmpty ? '-' : _namaController.text}",
                        style: const TextStyle(color: Color(0xFF5D4037)),
                      ),
                      Text(
                        "Komentar: ${_komentarController.text.isEmpty ? '-' : _komentarController.text}",
                        style: const TextStyle(color: Color(0xFF5D4037)),
                      ),
                      Text(
                        "Rating: ${_rating.toInt()} / 5",
                        style: const TextStyle(color: Color(0xFF8D6E63)),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 30),
              Center(
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.send, color: Colors.white),
                  label: const Text(
                    'Kirim Feedback',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF6D4C41), // cokelat tua
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    elevation: 3,
                  ),
                  onPressed: () {
                    if (_namaController.text.isEmpty ||
                        _komentarController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content:
                              Text('Nama dan komentar tidak boleh kosong!'),
                          backgroundColor: Colors.redAccent,
                        ),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FeedbackResultPage(
                            nama: _namaController.text,
                            komentar: _komentarController.text,
                            rating: _rating.toInt(),
                          ),
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
