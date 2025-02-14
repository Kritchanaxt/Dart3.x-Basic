void main() {
  String name = "Mr.Kritchanat";

  //* 1️⃣ การใช้งาน print() แสดงค่า
  print("\n -- print --");
  print(name);


  //* 2️⃣ หาความยาวข้อความ (length)
  print("\n -- length --");
  print(name.length);

  //* 3️⃣ เปลี่ยนตัวอักษรเป็นพิมพ์เล็ก toLowerCase() และพิมพ์ใหญ่ toUpperCase()
  print("\n -- toLowerCase(), toUpperCase() --");
  print(name.toLowerCase());
  print(name.toUpperCase());

  //* 4️⃣ ตรวจสอบว่าข้อความมีคำที่ต้องการหรือไม่ contains()
  print("\n -- contains() --");
  print(name.contains("fer"));
  if (name.contains("dart")) {
    print("Found");
  } else {
    print("Not Found");
  }

  //* 5️⃣ ค้นหาตำแหน่งตัวอักษร indexOf(), lastIndexOf()
  print("\n -- indexOf(), lastIndexOf() --");
  print(name.indexOf("a")); // ตำแหน่งแรก
  print(name.lastIndexOf("a")); // ตำแหน่งสุดท้าย

  //* 6️⃣ ตรวจสอบว่า String ขึ้นต้นด้วยคำที่กำหนด startsWith()
  print("\n -- startsWith() --");

  print(name.startsWith("Mr."));

  if (name.startsWith("Mr.") || name.startsWith("Boy")) {
    print("Male");
  } else if (name.startsWith("Miss") || name.startsWith("Girls")){
    print("Female");
  } else {
    print("Not  prefix");
  }

  //* 7️⃣ ตรวจสอบว่า URL ลงท้ายด้วยประเทศอะไร endsWith()
  print("\n -- endsWith() --");

  String url = "www.wafer.th";
  print(url);
  if (url.endsWith("th")) {
    print("Website Thailand");
  } else if (url.endsWith("us")) {
    print("Website USA");
  } else if (url.endsWith("cn")) {
    print("Website China");
  } else {
    print("Website Other");
  }

  //* 8️⃣ แทนที่ข้อความ replaceFirst()
  print("\n -- replaceFirst() --");

  String title = "สวัสดีปีใหม่ 2567, วันสงกรานต์ 2567";
  title = title.replaceFirst("2567", "2024");
  print(title);

  //* 9️⃣ ตัดช่องว่าง trim()
  print("\n -- trim()--");

  String nameTrim = "  wafer  ";
  String nameNoTrim = "  wafer  ";
  nameNoTrim = nameNoTrim; // ไม่ตัด
  nameTrim = nameTrim.trim(); // ตัด
  print(nameNoTrim);
  print(nameTrim);

  //* 🔟 แยกข้อความ split()
  print("\n -- split() --");

  String day = "12/02/2568";
  print(day);
  print(day.split("/")); // output is List
  print(day.split("/")[0]);
  print(day.split("/")[2]);

  print("\n");

}