void main() {
  print("\n"); 
  //? Sets ต้องมีค่าไม่ซ้ำกัน

  //* 1️⃣ การสร้าง Set

  // Set แบบไม่ระบุชนิดข้อมูล
  var data = {10, 20, 30, 40, true, "Wafer", 99.99};
  Set data0 = {10, 20, 30, 40, true, "Wafer", 99.99};
  print(data0);
  print(data);
  print("\n");
  
  // Set แบบระบุชนิดข้อมูล
  Set<int> data1 = {10, 20, 30, 40, -10, -20, -30};
  Set<String> colors = {"red", "green", "yellow"};
  print(data1);
  print(colors);
  print("\n");

  //* 2️⃣ การเข้าถึงข้อมูล

  // เช็คความยาว Set
  print(colors.length);
  print("\n");

  // ตรวจสอบว่ามีค่านั้นอยู่ใน Set หรือไม่
  print(colors.contains("red"));
  print(colors.contains("blue"));
  print("\n");

  // เปลี่ยนข้อมูล (ทำไม่ได้โดยตรง ต้องลบแล้วเพิ่มใหม่)
  colors.remove("red");
  colors.add("Blue");
  print(colors);
  print("\n");

  //* 3️⃣ การวนลูปใน Set

  // ใช้ for-in loop
  for (String element in colors) {
    print(element);
  }
  print("\n");

  //* 4️⃣ การเข้าถึงข้อมูลบางตัว
  print(colors.first);
  print(colors.last);
  print(colors.isEmpty);
  print("\n");

  //* 5️⃣ การหาผลรวมค่าใน Set
  Set<int> stock = {10, 20, 30};
  int total = 0;
  for (int item in stock) {
    total += item;
  }
  print("Total Stock = $total");
}