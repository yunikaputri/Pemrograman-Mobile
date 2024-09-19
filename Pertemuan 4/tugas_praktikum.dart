// // Soal 3a
// void greet(String name) {
//   print('Hello, $name');
// }
// void main() {
//   greet('Yunika'); // Memanggil fungsi greet dengan parameter 'Yunika'
// }

// // Soal 3b
// void greet({required String name, required int age}) {
//   print('Hello, $name, Age: $age');
// }

// void main() {
//   greet(name: 'Yunika', age: 20); // Memanggil fungsi greet dengan parameter nama dan umur
// }

// // Soal 3c
// void greet(String name, [int? age]) {
//   print('Hello, $name, Age: $age');
// }

// void main() {
//   greet('Yunika', 20);  // Memanggil dengan parameter age
//   greet('Yunika');      // Memanggil tanpa parameter age
// }

// // Soal 4
// void main() {
//   var add = (int a, int b) => a + b;
//   print(add(3, 4)); // Output: 7
// }

// // Soal 5
// void main() {
//   var list = [1, 2, 3];
//   var squared = list.map((x) => x * x);
//   print(squared.toList()); // Output: [1, 4, 9]
// }

// // Soal 6a
// void main() {
//   var luarVariable = 'luar!';

//   void dalamFunction() {
//     var dalamVariable = 'dalam!';
//     print(luarVariable); // Mengakses variabel dari luar scope
//     print(dalamVariable); // Mengakses variabel dari dalam scope
//   }

//   dalamFunction();

//   // print(dalamVariable); // Ini akan menyebabkan error karena dalamVariable tidak dapat diakses di luar dalamFunction
// }

// // Soal 6b
// Function makeCounter() {
//   var count = 0;

//   // Mengembalikan fungsi yang mengakses variabel 'count'
//   return () {
//     count += 1;
//     return count;
//   };
// }

// void main() {
//   var counter = makeCounter(); // Membuat counter yang mengingat variabel 'count'

//   print(counter()); // Output: 1
//   print(counter()); // Output: 2
//   print(counter()); // Output: 3
// }

// Soal 7
(int, String) getPersonInfo() {
  return (24, 'Yunika Puteri Dwi Antika');
}

void main() {
  var info = getPersonInfo();
  print(
      'Age: ${info.$1}, Name: ${info.$2}'); // Output: Age: 24, Name: Yunika Puteri Dwi Antika
}
