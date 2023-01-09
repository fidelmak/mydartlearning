//let us add method to a string to make our life easier
void main(List<String> args) {
  // final x = 'Hello'.duplicate();
  final x = 'Hello'.duplicate; // this is for get property
  print(x);
  // usind extension method
}

extension StringDuplication on String {
  // String duplicate() {
  //   return this + this;
  // }
  // you can also create a property which works like the above code
  String get duplicate {
    return this + this;
  }
}
