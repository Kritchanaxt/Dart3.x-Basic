void main() {
  Set <int> a = {10,20,30,40,50};
  Set <int> b = {10,15,20,25,30};
  Set <int> c = a.union(b);
  Set <int> d = a.intersection(b);
  Set <int> e = a.difference(b);

  print(c);
  print(d);
  print(e);
}