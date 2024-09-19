import 'dart:io';

void main() {
  int jmlsmt, jmlmk;
  List<List<int>> sks = [];
  List<List<String>> nilaiHuruf = [];
  List<List<String>> matkul = [];
  List<double> nr = [];
  List<int> skssmt = [];
  int totalsks = 0;
  double totalnr = 0;

  print("==============================================");
  print("\tProgram Menghitung IPK Mahasiswa");
  print("==============================================");

  stdout.write("Masukkan jumlah semester: ");
  jmlsmt = int.parse(stdin.readLineSync()!);

  if (jmlsmt < 2 || jmlsmt > 14) {
    print("Jumlah semester salah!");
    return;
  }

  for (int i = 0; i < jmlsmt; i++) {
    int jumlahnilai = 0;
    int jumlahsks = 0;
    stdout.write("Masukkan jumlah mata kuliah semester ${i + 1}: ");
    jmlmk = int.parse(stdin.readLineSync()!);

    if (jmlmk < 2) {
      print("Jumlah mata kuliah kurang dari 2 setiap semester");
      return;
    }

    sks.add([]);
    nilaiHuruf.add([]);
    matkul.add([]);

    for (int j = 0; j < jmlmk; j++) {
      stdout.write("Masukkan nama mata kuliah ke-${j + 1}: ");
      String matkulName = stdin.readLineSync()!;
      matkul[i].add(matkulName);

      stdout.write("Masukkan jumlah SKS mata kuliah: ");
      int sksValue = int.parse(stdin.readLineSync()!);
      sks[i].add(sksValue);

      stdout.write("Masukkan nilai mata kuliah (A, B, C, D, E): ");
      String nilai = stdin.readLineSync()!;
      nilaiHuruf[i].add(nilai);

      int nilaiAngka;
      if (nilai == 'A') {
        nilaiAngka = 4;
      } else if (nilai == 'B') {
        nilaiAngka = 3;
      } else if (nilai == 'C') {
        nilaiAngka = 2;
      } else if (nilai == 'D') {
        nilaiAngka = 1;
      } else if (nilai == 'E') {
        nilaiAngka = 0;
      } else {
        print("Input nilai salah!");
        return;
      }

      jumlahnilai += nilaiAngka * sksValue;
      jumlahsks += sksValue;
    }

    if (jumlahsks > 24) {
      print("Jumlah SKS semester lebih dari 24");
      return;
    } else {
      skssmt.add(jumlahsks);
      nr.add(jumlahnilai / jumlahsks);
    }
  }

  print("==============================================");
  print("\t\tTranskrip Nilai");
  print("==============================================");

  for (int i = 0; i < jmlsmt; i++) {
    print("\nHasil Semester ${i + 1}:");
    print("Mata Kuliah\t\tSKS\t\tNilai");
    for (int j = 0; j < matkul[i].length; j++) {
      print("${matkul[i][j]}\t\t${sks[i][j]}\t\t${nilaiHuruf[i][j]}");
    }
    print("\nSKS: ${skssmt[i]}");
    print("NR: ${nr[i].toStringAsFixed(2)}");
    totalsks += skssmt[i];
    totalnr += nr[i];
    print("--------------------------------------------");
  }

  double ipk = totalnr / jmlsmt;
  print("\nTotal SKS: $totalsks");
  print("IPK: ${ipk.toStringAsFixed(2)}");
  print("==============================================");
}
