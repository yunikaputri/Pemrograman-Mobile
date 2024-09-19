void main() {
  // LANGKAH 1
  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);

  // LANGKAH 2
  final list =
  List<dynamic>.filled(5, null); // Membuat list mutable dengan panjang 5
  list[1] = 'Yunika Puteri Dwi Antika'; // Mengisi elemen index ke-1 dengan nama
  list[2] = '2241760048'; // Mengisi elemen index ke-2 dengan NIM

  assert(list.length == 5); // Memastikan panjang list adalah 5
  assert(list[1] != null); // Memastikan elemen di index ke-1 sudah diisi
  assert(list[2] != null); // Memastikan elemen di index ke-2 sudah diisi

  print(list.length); // Menampilkan panjang list
  print(list[1]); // Menampilkan elemen di index ke-1 (Nama)
  print(list[2]); // Menampilkan elemen di index ke-2 (NIM)
}
