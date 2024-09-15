void main() {
  String namaLengkap = "Yunika Puteri Dwi Antika";
  String nim = "2241760048";

  // memeriksa apakah sebuah angka adalah bilangan prima
  bool bilanganPrima(int number) {
    if (number <= 1) return false;
    if (number == 2) return true;
    if (number % 2 == 0) return false;
    for (int i = 3; i * i <= number; i += 2) {
      if (number % i == 0) return false;
    }
    return true;
  }

  // mencetak bilangan prima dari 0 sampai 201
  for (int i = 0; i <= 201; i++) {
    if (bilanganPrima(i)) {
      print("Bilangan prima: $i");
      print("Nama Lengkap: $namaLengkap");
      print("NIM: $nim");
      print("");
    }
  }
}
