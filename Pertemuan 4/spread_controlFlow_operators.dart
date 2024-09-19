void main() {
  // var list1 = [1, 2, 3];
  // var list2 = [0, ...list1];
  // print(list1);
  // print(list2);
  // print(list2.length);

  // LANGKAH 3
  // var list1 = [1, 2, null];
  // var list2 = [0, ...list1]; // Menggabungkan angka 0 dengan elemen dari list1
  // var list3 = [0, ...?list1]; // Menggabungkan angka 0 dengan elemen dari list1, mengabaikan null jika list1 adalah null
  // var nim = ['2241760048'];
  // var kombinasiList = [0, ...?list1, ...nim]; // Menggabungkan angka 0, elemen dari list1, dan NIM
  // print(list1);
  // print(list2);
  // print(list2.length);
  // print(list3.length);
  // print(kombinasiList);

  // LANGKAH 4
  // Variabel promoActive ketika true 
  // var promoActive = true;
  // var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print(nav);

  // Variabel promoActive ketika false 
  // var promoActive = false;
  // var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print(nav);

  // LANGKAH 5
  // Jika pengguna adalah Manager
  // var login = 'Manager'; 
  // var nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  // print(nav2);

  // Jika pengguna adalah Staff
  // var login = 'Staff'; 
  // var nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  // print(nav2);

  //LANGKAH 6
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
