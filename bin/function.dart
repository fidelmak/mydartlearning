// welcome to function

void main(List<String> arguments) {
// void means to return nothing
  // return Nested String

//String returnsStringNexted() {
  //return 'hello2'; }

  //print(returnsStringNexted());
  //print(returnsString()); }

//***************************************************************** */

// creating a string function
  //String returnsString() {
  //return 'hello';
  //}

  //void otherFunction() {
  // returnsString(); // you can call this string here but you cannot call returnsStringNexted(); because its outside the scope of the function
  //}

  //void positionalParams(int x, double y, String greeting) {
  //positionalParams(
  //  5, 3.5, "hi"); //this function is called three positional parameter
  //}

// we also have optional positional , the ? shows we want to make it nullable
  // void optionalParams(int x, double y, [String? greeting]) {
  //   optionalParams(3, 4);
  //   optionalParams(3, 4, 'hi , optionally');
  // }
// we also have named optional parameters

  // void nameOptionalParam({
  //   int? x,
  //   double? y,
  //   String? greetings,
  // }) {
  //   nameOptionalParam(x: 4, greetings: 'hi');
  // }

// creating a named required parameters
  // void nameRequiredParam({
  //   required int x,
  //   required double y,
  //   required String greeting,
  // }) {
  //   nameRequiredParam(x: 5, y: 4.5, greeting: "hello");
  // }
// you can combine named parameters with positional parameters

// this is higher order function

// in dart functions can be passed into a function

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
