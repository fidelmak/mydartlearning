// this is higher order function

// in dart functions can be passed into a function

void main(List<String> arguments) {
  // int plusFive(int x) {
  //   return x + 5;
  // } // this is a old way

  // creating a function to perform same operation twice

  final twicePlusFive = twice((x) => x + 5);

  final result = twicePlusFive(3);

  print(result);
}

// creating something different using typedef

typedef intTransformer = int Function(int);

intTransformer twice(intTransformer f) {
  return (int x) {
    return f(f(x));
  };
}
