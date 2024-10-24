import 'package:flutter/material.dart';
import 'about_page.dart';
import 'home_page.dart';

class ProfilePage extends StatelessWidget {
  final String username;

  const ProfilePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 2; // Index untuk halaman Profile

    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            const Color(0xFF4A90E2), // Warna biru seperti di halaman About
        title: const Text(
          'Profile Page',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        color: const Color(
            0xFFC4DBFF), // Warna latar belakang yang sama seperti di halaman About
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            CircleAvatar(
              radius: 60,
              backgroundImage:
                  AssetImage('assets/profile_pict.png'), // Gambar profil Anda
            ),
            const SizedBox(height: 20),
            // Menampilkan username
            Text(
              username,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Warna teks untuk username
              ),
            ),
            const SizedBox(height: 20),
            // Menampilkan nama
            const Text(
              'Yunika Puteri Dwi Antika',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Warna teks untuk nama
              ),
            ),
            const SizedBox(height: 5),
            // Menampilkan NIM
            const Text(
              '2241760048',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 10),
            // Deskripsi singkat
            const Text(
              'Mahasiswa semester 5 Program Studi Sistem Informasi Bisnis di Politeknik Negeri Malang dengan pengalaman di bidang media informasi dan desain grafis. Aktif berorganisasi serta memiliki minat di divisi Edukasi dan Ide Kreatif atau Media dan Informasi untuk mengembangkan potensi kreatif dan keterampilan dalam mengelola konten.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors
                    .white70, // Warna teks yang sama seperti di halaman About
                height: 1.5,
              ),
            ),
            const SizedBox(height: 20),
          ],
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
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AboutPage(username: username)),
            );
          }
        },
      ),
    );
  }
}
