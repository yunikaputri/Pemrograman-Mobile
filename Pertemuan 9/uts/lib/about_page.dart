import 'package:flutter/material.dart';
import 'profile_page.dart';
import 'home_page.dart';

class AboutPage extends StatelessWidget {
  final String username;

  const AboutPage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width; // Ambil lebar layar
    int selectedIndex = 1; // Index untuk halaman About

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4A90E2), // Blue app bar
        title: const Text(
          'About Page',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          color: const Color(0xFFC4DBFF), // Background color
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Ubah rata kiri
            children: [
              const SizedBox(height: 20),
              // Row for logo and text
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo.png', // Ganti dengan logo aplikasi Anda
                    height: screenWidth * 0.15, // Ukuran responsif untuk logo
                  ),
                  SizedBox(
                      width:
                          screenWidth * 0.02), // Spacing between logo and text
                  Expanded(
                    child: RichText(
                      text: const TextSpan(
                        text: 'Yunika ',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black, // Warna teks
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '\nStudio.',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan, // Cyan color for emphasis
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Text(
                'Aplikasi ini adalah platform hiburan yang dirancang untuk memberikan pengalaman menonton film dan serial TV yang menarik. Dengan antarmuka yang ramah pengguna dan desain yang menarik, pengguna dapat dengan mudah menjelajahi berbagai pilihan film terbaru dan terpopuler.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70, // Greyish white for normal text
                  height: 1.5,
                ),
                textAlign: TextAlign.left, // Tambahkan textAlign
              ),
              const SizedBox(height: 10),
              const Text(
                'Fitur unggulan aplikasi ini mencakup:',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                  height: 1.5,
                ),
                textAlign: TextAlign.left, // Tambahkan textAlign
              ),
              const SizedBox(height: 10),
              const Text(
                '- Katalog Film Luas: Pengguna dapat menikmati koleksi film dan serial yang terus diperbarui setiap minggu, mencakup berbagai genre dan kategori.\n'
                '- Akses Mudah: Dengan hanya satu klik, pengguna dapat mendaftar dan masuk ke akun mereka untuk mulai menonton.\n'
                '- Informasi Terkini: Pengguna akan mendapatkan pemberitahuan tentang tayangan eksklusif dan film terbaru yang tidak boleh dilewatkan.\n'
                '- Antarmuka Responsif: Aplikasi dirancang untuk berfungsi dengan baik di berbagai perangkat, memberikan pengalaman menonton yang nyaman di mana saja.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                  height: 1.5,
                ),
                textAlign: TextAlign.left, // Tambahkan textAlign
              ),
              const SizedBox(height: 20),
              const Text(
                'Bergabunglah dengan jutaan penonton lainnya dan nikmati pengalaman menonton film favorit Anda di aplikasi ini!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                  height: 1.5,
                ),
                textAlign: TextAlign.left, // Tambahkan textAlign
              ),
              const SizedBox(height: 30),
              // New section with image, name, and NIM, wrapped in Center
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage(
                          'assets/profile_pict.png'), // Add your image here
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Yunika Puteri Dwi Antika',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      '2241760048',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:
            const Color(0xFF4A90E2), // Warna biru pada BottomNavigationBar
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        currentIndex: selectedIndex, // Tetapkan index yang sedang dipilih
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
                color: selectedIndex == 0 ? Colors.white : Colors.white54),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info,
                color: selectedIndex == 1 ? Colors.white : Colors.white54),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle,
                color: selectedIndex == 2 ? Colors.white : Colors.white54),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HomePage(username: username)),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProfilePage(username: username)),
            );
          }
        },
      ),
    );
  }
}
