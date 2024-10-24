import 'package:flutter/material.dart';
import 'about_page.dart';
import 'profile_page.dart';

class HomePage extends StatelessWidget {
  final String username;

  const HomePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0; // Index untuk halaman Home

    return Scaffold(
      backgroundColor:
          const Color(0xFFC4DBFF), // Warna biru sebagai background utama
      appBar: AppBar(
        backgroundColor: const Color(0xFF4A90E2), // Warna biru di AppBar
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Row(
          mainAxisAlignment:
              MainAxisAlignment.center, // Menempatkan judul di tengah
          children: const [
            Text(
              'Yunika Studio', // Judul Movies
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click, // Mengubah kursor menjadi tangan
            child: GestureDetector(
              onTap: () {
                // Navigasi ke halaman profil saat foto profil diklik
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(username: username),
                  ),
                );
              },
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile_pict.png'),
              ),
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: ListView(
        children: [
          // Tab bar for categories
          Container(
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildTabBarButton('Popular', selected: true),
                _buildTabBarButton('Recomendation'),
                _buildTabBarButton('New Releases'),
                _buildTabBarButton('Cooming Soon'),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Image slider for movies
          SizedBox(
            height: 200,
            child: PageView(
              children: [
                _buildMovieCard('assets/poster1.jpg'),
                _buildMovieCard('assets/poster2.jpg'),
                _buildMovieCard('assets/poster3.jpg'),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Category buttons (Action, Thriller, Comedy)
          Container(
            height: 50, // Set a fixed height for the category container
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal, // Enable horizontal scrolling
              child: Row(
                children: [
                  _buildCategoryButton('All'),
                  const SizedBox(width: 13), // Jarak antar kategori
                  _buildCategoryButton('Action'),
                  const SizedBox(width: 13), // Jarak antar kategori
                  _buildCategoryButton('Thriller'),
                  const SizedBox(width: 13), // Jarak antar kategori
                  _buildCategoryButton('Comedy'),
                  const SizedBox(width: 13), // Jarak antar kategori
                  _buildCategoryButton('Romance'),
                  const SizedBox(width: 13), // Jarak antar kategori
                  _buildCategoryButton('Horror'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Section "Curated for you"
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              physics:
                  const NeverScrollableScrollPhysics(), // Nonaktifkan scroll GridView
              shrinkWrap:
                  true, // Mengizinkan GridView untuk menyesuaikan tinggi
              children: [
                _buildCuratedMovie('assets/thriller.jpg', 'Berbalas Kejam'),
                _buildCuratedMovie('assets/romance.jpg', 'Galaxy'),
                _buildCuratedMovie('assets/comedy.jpg', 'Cek Toko Sebelah 2'),
                _buildCuratedMovie('assets/action.jpeg', 'Ben & Jody'),
              ],
            ),
          ),
        ],
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
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AboutPage(username: username)),
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

  // Method untuk membangun tombol tab
  Widget _buildTabBarButton(String title, {bool selected = true}) {
    return Text(
      title,
      style: TextStyle(
        color: selected ? Colors.white : Colors.white54,
        fontWeight: selected ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }

  // Method untuk membangun card film
  Widget _buildMovieCard(String imagePath) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(imagePath, fit: BoxFit.cover),
      ),
    );
  }

  // Method untuk membangun tombol kategori
  Widget _buildCategoryButton(String title) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF4A90E2),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }

  // Method untuk membangun film yang dikurasi
  Widget _buildCuratedMovie(String imagePath, String title) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(imagePath, fit: BoxFit.cover),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.black
                .withOpacity(0.2), // Opacity diubah untuk kegelapan yang lebih
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 10,
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
