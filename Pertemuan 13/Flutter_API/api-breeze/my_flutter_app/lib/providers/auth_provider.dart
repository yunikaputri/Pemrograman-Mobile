import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../services/auth_services.dart';

class AuthProvider with ChangeNotifier {
  final AuthService _authService = AuthService();
  User? _user;

  /// Getter untuk mendapatkan data pengguna
  User? get user => _user;

  /// Fungsi login
  Future<bool> login(String email, String password) async {
    bool success = await _authService.login(email, password);
    if (success) {
      _user = await _authService.getProfile(); // Ambil data user setelah login
      notifyListeners(); // Beritahu listener jika ada perubahan
    }
    return success;
  }

  /// Fungsi logout
  Future<void> logout() async {
    await _authService.logout(); // Hapus token
    _user = null; // Hapus data user
    notifyListeners(); // Beritahu listener jika ada perubahan
  }

  /// Fungsi untuk memuat data pengguna saat aplikasi diluncurkan
  Future<void> loadUser() async {
    _user = await _authService.getProfile(); // Ambil profil user jika token masih valid
    notifyListeners(); // Beritahu listener jika ada perubahan
  }
}
