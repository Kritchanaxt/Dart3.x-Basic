// สร้าง class
class Employee {
  // property
  String? name;
  int? salary;

  // parameters constructor
  Employee(this.name, this.salary);

  // method
  void showDetail() {
    print("\nรายละเอียดของพนักงาน");
    print("ชื่อ = ${this.name}");
    print("เงินเดือน = ${this.salary}");
    print("-------------------");
  }
}

void main() {
  // สร้าง object 
  Employee emp1 = Employee("John Doe", 50000);
  emp1.showDetail();
  Employee emp2 = Employee("Jo", 40000);
  emp2.showDetail();
}