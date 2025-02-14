class Employee {
  String? name;
  int? salary;

  // Default constructor
  Employee() {
    print("สร้างพนักงานขึ้นในบริษัท");
  }
}

void main() {
  // สร้าง Object
  var emp1 = Employee();
  emp1.name = "James";
  emp1.salary = 50000;
  print(emp1.name);
  print(emp1.salary);

  Employee emp2 = Employee();
  emp2.name = "Jo";
  emp2.salary = 40000;
  print(emp2.name);
  print(emp2.salary);
}