void main() {
  var gifts = {
    // LANGKAH 1
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);

  // LANGKAH 3
  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  mhs1['Nama'] = 'Yunika Puteri Dwi Antika';
  mhs1['NIM'] = '2241760048';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  mhs2[1] = 'Yunika Puteri Dwi Antika';
  mhs2[6] = '2241760048';

  print('Gifts: $gifts');
  print('NobleGases 2: $nobleGases');
  print('Mahasiswa 1: $mhs1');
  print('Mahasiswa 2: $mhs2');
}
