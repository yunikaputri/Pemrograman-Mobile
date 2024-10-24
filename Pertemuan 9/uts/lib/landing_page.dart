import 'package:flutter/material.dart';
import 'login_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;

    return Scaffold(
      body: Stack(
        children: [
          // Background container
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF000000), // Black
                  Color(0xFF1C1C1C), // Dark gray
                ],
              ),
            ),
          ),
          // Splash image section
          Positioned.fill(
            child: Image.asset(
              'assets/background.jpeg', // Ganti dengan gambar latar belakang Anda
              fit: BoxFit.cover,
            ),
          ),
          // Main content
          Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: screenHeight * 0.1), // Responsive spacing
                  // Main logo
                  Image.asset(
                    'assets/logo.png', // Ganti dengan logo aplikasi Anda
                    height: screenHeight * 0.25, // Responsive logo height
                  ),
                  SizedBox(height: screenHeight * 0.02), // Responsive spacing
                  // App tagline
                  const Text(
                    'Tonton Film Favorit Anda',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Bergabunglah dengan jutaan penonton dan '
                    'nikmati pilihan film serta serial terpopuler!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.05), // Responsive spacing
                  // Login button (Updated to match the style in LoginPage)
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color(0xFF4A90E2), // Ubah warna tombol
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            30), // Tombol dengan tepi membulat
                      ),
                    ),
                    child: const Text(
                      'Get Started', // Teks tombol
                      style: TextStyle(
                        fontSize: 18, // Ukuran font
                        color: Colors.white, // Warna teks putih
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.05), // Responsive spacing
                  // Special announcement section
                  Container(
                    padding: EdgeInsets.all(screenSize.width * 0.04),
                    margin: EdgeInsets.symmetric(
                        horizontal: screenSize.width * 0.05),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: const Column(
                      children: [
                        Text(
                          'Film Baru Setiap Minggu!',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Nikmati tayangan eksklusif dan hit terbaru langsung dari layar Anda. '
                          'Setiap minggu, kami hadirkan film-film terbaik yang tak boleh Anda lewatkan. '
                          'Eksplorasi dunia hiburan dengan cerita baru yang memukau, hanya untuk Anda.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.1), // Responsive spacing
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
