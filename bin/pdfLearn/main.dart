void main(List<String> args) {
  // this is a string declared function
  String eatBeans() {
    return "i cooked beans";
  }

// nesting a function to another function
  String? newFunction() {
    return eatBeans();
  }

  //print(newFunction());
  // this is a positional function
  void myEat(int x, double y, String? food) {
    return print("$x , $y, $food ");
  }

  myEat(1, 2.5, "bread");
// this is optional positional argument
  void optionalMyEat(int x, double y, [String? food]) {
    return print("$x , $y, $food ");
  }

  optionalMyEat(2, 3.5);
// this is named optional positional argument
  void myNameEat({int? x, double? y, String? food}) {
    return print("$x , $y, $food ");
  }

//combine named parameters with positional parameters
  myNameEat(x: 5, y: 4.5, food: "rice");

  int myAdd(int x) {
    return x + 10;
  }

  print(myAdd(20));

  // we can program easily using arrow function

  int plus(int y, int x) => y + x;
  print(plus(4, 3));
}

// creating something different using typedef
typedef transform = int Function(int);
transform twice(transform f) {
  return (int x) {
    return f(f(x));
  };
}
