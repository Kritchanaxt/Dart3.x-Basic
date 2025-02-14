void main() {
  print("\n");


  //* 1️⃣ การสร้าง List

  // List แบบไม่ระบุชนิดข้อมูล
  var data = [100, 200, 300, 400, true, "Wafer", 99.99];
  List data0 = [100, 200, 300, 400, true, "Wafer", 99.99];
  print(data0);
  print(data);
  print("\n");
  
  // List แบบระบุชนิดข้อมูล
  List<int> data1 = [100, 200, 300, 400, -100, -200, -300];
  List<String> colors = ["red", "green", "yellow"];
  print(data1);
  print(colors);
  print("\n");

  //* 2️⃣ การเข้าถึงข้อมูล

  // เช็คความยาว List
  print(colors.length);
  print("\n");

  // เข้าถึงข้อมูลด้วย Index
  print(colors[0]);
  print(colors[1]);
  print("\n");

  // เปลี่ยนข้อมูล
  colors[0] = "Blue";
  print(colors);
  print("\n");

  //* 3️⃣ การวนลูปใน List

  // ใช้ for loop ปกติ
  for(int i=0; i<colors.length; i++) {
    print(colors[i]);
  }
  print("\n");

  // ใช้ for-in loop
  for(String element in colors) {
    print(element);
  }
  print("\n");

  //* 4️⃣ การเข้าถึงข้อมูลบางตัว
  print(colors.first);
  print(colors.last);
  print(colors.isEmpty);
  print("\n");


  //* 5️⃣ การหาผลรวมค่าใน List
  List<int> stock = [10,20,30];
  int total = 0;
  for(int item in stock) {
    total += item;
  }
  print("Total Stock = $total");
}