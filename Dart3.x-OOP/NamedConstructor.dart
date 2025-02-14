class Employee {
  String? name;
  int? salary;

  // Named constructor
  Employee() {
    print("สร้างพนักงาน");
  }

  Employee.nameOnly(String name) {
    this.name = name;
  }

  Employee.full(String name, int salary) {
    this.name = name;
    this.salary = salary;
  }

}

void main() {
  // สร้าง Object
  Employee emp1 = Employee();
  print(emp1.name);
  print(emp1.salary);
  print("------------");

  Employee emp2 = Employee.nameOnly("John Doe");
  print(emp2.name);
  print("------------");


  Employee emp3 = Employee.full("Jane Smith", 50000);
  print(emp3.name);
  print(emp3.salary);
  print("------------");

}