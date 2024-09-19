void main() {
  // LANGKAH 1
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  //LANGKAH 3
  // Membuat tiga variabel Set
  var names1 = <String>{};
  Set<String> names2 = {}; // Ini juga bekerja sebagai Set
  // var names3 = {}; // Creates a map, not a set.

  // Menambahkan nama dan NIM menggunakan .add() untuk names1
  names1.add('Yunika Puteri Dwi Antika');
  names1.add('2241760048');

  // Menambahkan nama dan NIM menggunakan .addAll() untuk names2
  names2.addAll({'Yunika Puteri Dwi Antika', '2241760048'});

  // Mencetak kedua set
  print('$names1');
  print('$names2');
}
