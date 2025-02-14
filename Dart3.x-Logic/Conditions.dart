void main() {

  //* 1️⃣ if-else statement
  print("\n-- if else statement --");
  num score = 20;
  print("Score midterm = $score");

  if (score >= 40) {
    print("Pass");
  } else {
    print("Fail");
  }

  // Ternary operator
  score >= 20 ? print("Pass") : print("Fail");

  //* 2️⃣ Multiple conditions (if-else)
  int menu = 3;

  if (menu == 1) {
    print("Open new account");
  } else if (menu == 2) {
    print("Withdraw");
  } else if (menu == 3) {
    print("Deposit");
  } else {
    print("Invalid menu number");
  }

  //* 3️⃣ switch-case statement
  print("\n-- switch case statement --");

  switch (menu) {
    case 1:
      print("Open new account");
      break;
    case 2:
      print("Withdraw");
      break;
    case 3:
      print("Deposit");
      break;
    default:
      print("Invalid menu number");
  }

  //* 4️⃣ Multiple conditions (switch-case)
  String name = "iPhone";
  // String name = "Samsung";

  switch (name) {
    case "Oppo":
    case "Samsung":
    case "Realme":
    case "Vivo":
    case "Pixel":
      print("OS Android");
      break;

    case "iPhone":
    case "iPad":
      print("OS iOS");
      break;

    default:
      print("Invalid");
  }

}