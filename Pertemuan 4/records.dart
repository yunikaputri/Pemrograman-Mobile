// void main() {
//   // LANGKAH 1
//   var record = ('first', a: 2, b: true, 'last');
//   print(record);
// }

// LANGKAH 3
// (int, int) tukar((int, int) record) {
//   var (a, b) = record;
//   return (b, a); // Tukar posisi a dan b
// }

// void main() {
//   // Membuat record dengan dua nilai (x, y)
//   var record = (100, 200);
//   print('Sebelum ditukar: $record'); // Cetak record sebelum ditukar

//   // Menggunakan fungsi tukar untuk menukar nilai record
//   var recordTukar = tukar(record);
//   print('Setelah ditukar: $recordTukar'); // Cetak record setelah ditukar
// }

// LANGKAH 4
// void main() {
//   // Record type annotation in a variable declaration:
//   (String, int) mahasiswa;

//   // Inisialisasi nama dan NIM
//   mahasiswa = ('Yunika Puteri Dwi Antika', 2241760048);

//   // Mencetak nilai record mahasiswa
//   print(mahasiswa);
// }

// LANGKAH 5
void main() {
  // Membuat record dengan beberapa field
  var mahasiswa2 = ('Yunika Puteri Dwi Antika', a: 2241760048, b: true, 'last');

  // Mencetak field dari record
  print(mahasiswa2.$1); // Prints 'Yunika Puteri Dwi Antika'
  print(mahasiswa2.a); // Prints 2241760048
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}
