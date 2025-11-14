import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Aplikasi'),
        backgroundColor: const Color.fromARGB(255, 94, 62, 2),
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
               Colors.white,
              Color.fromARGB(255, 236, 181, 117),
              Colors.white,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Center(
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 136, 90, 4).withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.flutter_dash,
                        size: 48,
                        color:Color.fromARGB(255, 126, 74, 7),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Tentang Aplikasi ',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 155, 91, 7),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Flutter Navigation Demo\n\n'
                      'Aplikasi ini dibuat untuk mempelajari navigasi dasar Flutter, termasuk:\n\n'
                      '• Navigator.push() & Navigator.pop()\n'
                      '• Pengiriman data antar halaman\n'
                      '• BottomNavigationBar & Drawer\n\n'
                      'Desain dengan tema warna pink yang lembut dan elegan.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF555555),
                        height: 1.6,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color:Color.fromARGB(255, 116, 64, 5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'Made with  Flutter',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}