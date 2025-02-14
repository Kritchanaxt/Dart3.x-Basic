void main() {
  showData();
  showDataEmployee("Gotjitag", "FontEnd");

  showEmployee("Wafer", "Mobile dev", 5000);
  showEmployee("Got", "Web dev", 3000);
  showEmployee("Diw", "BackEnd", 6000);
  showEmployee("My", "BA");
  showEmployee("Kla", "IT support");

  print("\n-- Named Parameters & Required --");
  showEmployee2(name: "Win");
  showEmployee2(name: "John", position: "QA");
  showEmployee2(name: "Peter", salary: 10000);

  print("\n-- Function Return Values --");
  int voter = 18;
  print((voter >= checkAge()) ? "มีสิทธิ์เลือกตั้ง" : "ไม่มีสิทธิ์เลือกตั้ง");
  print("\n");

  int resultSum = sum(400, 200);
  print("Sum = $resultSum");
  String result = checkNumber(10);
  print(result);
  print("\n");

  int resultA = add(800, 200);
  print(resultA);
  int resultS = subtract(800, 200);
  print(resultS);
  print("\n");

  var fn = calculator("/");
  print(fn(800,500));

  var fn2 = calculator2("/");
  print(fn2(800,500));

  var fn3 = calculator3("-");
  print(fn3(800,500));
}

//* Default Function
void showData() {
  print("Hello, Dart!");
}

//* Function Parameters 
void showDataEmployee(String name, String position) {
  print("\nInformation employee");
  print("Name = $name");
  print("Position = $position\n");
}

//* Optional Parameters
void showEmployee(String name, String position, [int salary = 1000]) {
  print('Name: $name');
  print('Position: $position');
  print('Salary: $salary Bath');
  print("-----------------------");
}
 
//* Named Parameters & Required
void showEmployee2({required String? name, String? position, int? salary}) {
  print('Name: $name');
  print('Position: $position');
  print('Salary: $salary Bath');
  print("-----------------------");
}
//* Function Return Values

//? ฟังก์ชั่นแบบมีค่าส่งกลับ
int checkAge() {
  return 18;
}

//? ฟังก์ชั่นแบบรับและส่งค่า
int sum(int a, int b) {
  int total = a+b;
  return total;
}

String checkNumber(int number) {
  return (number % 2 == 0) ? "เลขคู่" : "เลขคี่";
}

//* Arrow Functions
int add(int a, int b) => a+b;
int subtract(int a, int b) => a-b;

//* First-Class Function
Function calculator(String symbol) { // + -
  if (symbol == "+") return add;
  if (symbol == "-") return subtract;
  return add;
}

Function calculator2(String symbol) { // + -
  if (symbol == "+") return add;
  if (symbol == "-") return subtract;
  return subtract;
}

Function calculator3(String symbol) { // + -
  if (symbol == "+") return add;
  if (symbol == "-") return subtract;
  return add;
}