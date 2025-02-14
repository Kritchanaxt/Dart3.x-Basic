void main() {

  // Continue 
  print("\n -- Continue --");
  for(int count = 1; count <= 10; count++) {
    if(count % 2 == 0) {
      print("skip $count");
      continue;
    }
    print("Order number $count");
  }
  print("End Program");

  // Break
  print("\n -- Break --");
  for(int count = 1; count <= 10; count++) {
    if(count % 2 == 0) {
      print("skip $count");
      break;
    }
    print("Order number $count");
  }
  print("End Program\n");
}