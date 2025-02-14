//* Generic class
class Item<T> {
  T _value; // ตัวแปร _value เป็นตัวแปรชนิด T
  Item(this._value); // คอนสตรัคเตอร์ที่รับค่าของประเภท T

  // Method เก็บค่าของ _value
  T get value {
    return this._value; // คืนค่าของ _value
  }
  
  // Method กำหนดค่าของ _value
  set value(T parameter) {
    this._value = parameter; // กำหนดค่าใหม่ให้กับ _value
  }
}

void main() {
  var obj1 = Item<int>(10);
  print(obj1.value);
  var obj2 = Item<String>("dart");
  print(obj2.value);
  var obj3 = Item<double>(90.99);
  print(obj3.value);
  var obj4 = Item<bool>(false);
  print(obj4.value);
}

/* Generic class และ Generic methods 
- เพื่อทำให้คลาส Item สามารถทำงานกับหลายประเภทข้อมูลได้อย่างยืดหยุ่น โดยไม่ต้องสร้างคลาสหลายๆ อันสำหรับแต่ละประเภทข้อมูล และยังคงรักษาความปลอดภัยในประเภทข้อมูลด้วยการใช้ตัวแปรชนิดทั่วไป T ที่สามารถเปลี่ยนแปลงได้ตามประเภทที่ต้องการเมื่อสร้างอ็อบเจ็กต์. */