void main() {

  //* 1️⃣ Order of Operation (ลำดับการดำเนินการทางคณิตศาสตร์)
  print("\n-- Order of Operation --");
  num number1 = 10, number2 = 3;
  print("Add = ${number1 + number2}");
  print("Subtract = ${number1 - number2}");
  print("Multiply = ${number1 * number2}");
  print("Divide = ${number1 / number2}");
  print("Integer division = ${number1~/number2}");
  print("Modulus = ${number1 % number2}");

  //* 2️⃣ Increment และ Decrement
  print("\n-- Increment --"); // เพิ่มค่า 
  int a = 5;
  int b = 5;
  print("Defaults = $a\n");

  //? Prefix = ++a เพิ่มให้ตัวแปรก่อน 1 ค่าแล้วนำไปใช้
  print("Prefix = ${++a}");
  print("After increment = $a\n");

  //? Postfix = a++ นำค่าปัจจุบัน a ไปใช้ก่อนแล้วค่อยเพิ่มค่า
  print("Postfix = ${b++}");
  print("After increment = $b");

  print("\n-- Decrement --"); // ลดค่า 
  int c = 5;
  int d = 5;
  print("Defaults = $c\n");

  //? Prefix = --a ลดให้ตัวแปรก่อน 1 ค่าแล้วนำไปใช้
  print("Prefix = ${--c}");
  print("After decrement = $c\n");

  //? Postfix = a-- นำค่าปัจจุบัน a ไปใช้ก่อนแล้วค่อยลดค่า
  print("Postfix = ${d--}");
  print("After decrement = $d\n");

  //* 3️⃣ Assignment Operators (ตัวดำเนินการกำหนดค่า)
  print("\n-- Assignment Operators --");
  num x = 100, y = 50;
  num x1 = 100, y1 = 50;
  num x2 = 100, y2 = 50;
  num x3 = 100, y3 = 50;
  num x4 = 100, y4 = 50;
  num x5 = 100, y5 = 50;

  print("x = $x, y = $y");

  x += y;
  x1 -= y1;
  x2 *= y2;
  x3 /= y3;
  x4 ~/= y4;
  x5 %= y5;

  print("Value x = $x");
  print("Value x1 = $x1");
  print("Value x2 = $x2");
  print("Value x3 = $x3");
  print("Value x4 = $x4");
  print("Value x5 = $x5");

  //* 4️⃣ Comparison Operators (ตัวดำเนินการเปรียบเทียบ)
  print("\n-- Comparison operators --");
  num f = 100, g = 30;
  print(f == g);
  print(f != g);
  print(f > g);
  print(f < g);
  print(f >= g);
  print(f <= g);

  //* 5️⃣ Logical Operators (ตัวดำเนินการตรรกะ)
  print("\n -- Logical operators --");
  String gender = "female";
  int age = 20;

   // OR (||)
  (gender == "male" || age == 20) ? print("Pass") : print("Fail"); // True

  // AND (&&)
  (gender == "male" && age == 20) ? print("Pass") : print("Fail");  // False

  // NOT (!) 
  (!(gender == "male") && age == 20) ? print("Pass") : print("Fail"); // True

  print("\n");
}