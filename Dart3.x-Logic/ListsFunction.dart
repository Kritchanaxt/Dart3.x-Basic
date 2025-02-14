void main() {
   print("\n");

  //* 1️⃣ การเพิ่มข้อมูลใน List
  List<String> colors=["red", "green", "blue"];
  colors.add("white"); // เพิ่มรายการเดียว
  print(colors);

  colors.addAll(["pink", "purple", "yellow"]); //เพิ่มหลายรายการ
  print(colors);
  print("\n");


  //* 2️⃣ การแทรกและลบข้อมูล
  colors.insert(1, "brown"); // แทรกข้อมูลที่ตำแหน่ง index ที่กำหนด
  print(colors);
  colors.remove("red"); // ลบข้อมูลตามค่า
  print(colors);
  colors.removeAt(2); // ลบข้อมูลตาม index
  print(colors);
  // colors.clear(); // ลบข้อมูลทั้งหมด
  print("\n");


  //* 3️⃣ การค้นหาใน List
  print(colors.contains("black")); // เช็คว่ามีค่านั้นอยู่ใน List หรือไม่
  print(colors.indexOf("green")); // หาตำแหน่ง index ของข้อมูล
  print("\n");


  //* 4️⃣ การแปลง List เป็น String
  String text = colors.join(", ");
  print("Data Colors = $text");
  print("\n");


  //* 5️⃣ การเรียงลำดับ List
  List<String> students = ["Got", "Diw", "Kla"];
  List<int> scores = [35,20,18,40,37];
    
  students.sort(); // เรียงจาก A-Z
  print(students);
  print(students.reversed);
  
  scores.sort(); 
  print(scores);
  print(scores.reversed);
  print("\n");

  //* 6️⃣ วนลูปแสดงข้อมูล
  students.forEach((element){
    print("Nick name = $element");
  });
  print("\n");

}