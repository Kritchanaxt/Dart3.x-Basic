void main() {
  // null aware assignment
  String? input = null; //ค่าที่ผู้ใช้ป้อน
  input ??= "กรุพเทพมหานคร";
  print("ที่อยู่ของคุณ = $input");

  String? inputNull = null; 
  print(inputNull);

  String? inputFunc = null; 
  print(inputFunc?.length);
  print(inputFunc?.toUpperCase());


}