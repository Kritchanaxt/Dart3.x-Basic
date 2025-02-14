void main() {
  
  //* 1️⃣ while Loop → ใช้เมื่อยังไม่รู้จำนวนรอบแน่นอน
  print("\n-- while loop --");
  int count = 1;
  while (count <= 3) {
    print("$count. Hello Dart");
    count++;
  }
  print("End Program");


  //* 2️⃣ do-while → ใช้เมื่ออยากให้โค้ดทำงานอย่างน้อย 1 ครั้ง
  print("\n-- do while loop --");
  int countDo = 10;
  // int countDo = 1;
  do {
    print("$countDo. Hello Dart");
    countDo++;
  } while (countDo <= 3);
  print("End Program");

  //* 3️⃣  for → ใช้เมื่อรู้จำนวนรอบแน่นอน
  print("\n-- for loop --");

  // for Loop แบบกำหนดตัวแปรภายใน
  for (double i = 7; i <= 10; i+=0.5) {
    print("$i. Hello Dart");
  }
  print("End Program\n");
  
  // for Loop แบบกำหนดตัวแปรภายนอก
  int countFor = 1;
  for (countFor; countFor <= 5; countFor++) {
    print("$countFor. Hello Dart");
  }
  print("End Program");

  //* 4️⃣ for-in → ใช้สำหรับวนลูป List หรือ Iterable
  print("\n-- for in loop --");
  List<String> names = ["Alice", "Bob", "Charlie"];

  for (String name in names) {
    print(name);
  }
  print("End Program\n");

}