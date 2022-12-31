void main(List<String> arguments) {
  //String Mystring = 'welcome to learning dart language ';
  //print(Mystring);

  // this are variables and data types
//......................................
//   print(Mystring.contains("dart"));
//   int MyInteger = 5;
//   print(MyInteger.toString());
//   // print(MyInteger.isEven);
//   print(MyInteger.isOdd);
//   double MyDecimal = 4.5;

//   num MyNum = 3.3;
//   bool MyBool = false;
//   print(MyBool);

//   dynamic MyDynamic = 4;
//   //MyDynamic = "Hello eyan mi";
//   //MyDynamic = true;
//   print(MyDynamic);

// using variable key

  var Mystring = 'welcome to learning dart language ';
  // you can reassign your code
  //Mystring = "i love javascript"; // when you print it it will give you this
  print(Mystring);

  // to make your code unsignable you can add FINAL

  // final Mystring2 =
  //     'welcome to learning dart language '; // that is you can only declare this once
  // // you can also declare a variable and later reassign it later

  // String MyArtString;
  // MyArtString = "Felicity";

  // // if you try print(MyArtString) without assigning it first , this will through an error

  // // Lets Talk about Null and  Non-Nullable
  // // Null means it does'not have anything

  // String? Impossible =
  //     null; // the question mark sign lets the Impossible nullable
  // print(Impossible?.length); // this code will print null

  // // lets look at ana example
  // String? possible = "abc"; // sets the variable to null
  // print(possible.length); // this gives the length of the string

  // lets talk about operators

  int Result;
  Result = 5 * 5;
  double resultDouble = 5 / 5;
  Result = 6 ~/ 7; // this cut off the decimal making your answer to be a whole

  // lets say you want to increase a value
  // int x = 6;
  // x++;
  // print(x); // this will increase by 1
  // x--; // this lowers the number
  // x += 5;
  // x -= 5;
  // x *= 5;
  // x ~/= 5;
  // print(x);

  // // we also have boolean operator
  // bool IsEqual = 5 == 20; // this check if 5 is same as 20
  // bool IsEquals = 5 != 20; // this check if 5 is not same as 20
  // print(IsEquals);
  // // String interpolation

  // String New = 'Arrival: $Mystring';
  // print(New);

  //...................................................

  // lets look at control flow

  // final MyInteger = 100;
  // if (MyInteger == 5) {
  //   print("it's equal to 5");
  // } else if (MyInteger == 10) {
  //   print("it's equal to 10");
  // } else {
  //   print("not equal ");
  // }
  // print("");
  // // instead of using the above if statement, you can use a switch statement

  // switch (MyInteger) {
  //   case 5:
  //     print("it's equal to 5");
  //     break;
  //   case 10:
  //     print("it's equal to 10");
  //     break;
  //   default:
  //     print("not equal ");
  //     break;
  // }

  // lets talk about Loops , this helps to run our code multiple times

  // for (int i = 0; i < 10; i++) {
  //   print(i);
  // }

  // welcome to function
// void means to return nothing
  // return Nested String
  String returnsStringNexted() {
    return 'hello2';
  }

  print(returnsStringNexted());
  print(returnsString());
}

//***************************************************************** */

// creating a string function
String returnsString() {
  return 'hello';
}

void otherFunction() {
  returnsString(); // you cann call this string here but you cannot call returnsStringNexted(); because its outside the scope of the function
}

void positionalParams(int x, double y, String greetind) {
  positionalParams(
      5, 3.5, "hi"); //this function is called three positional parameter
}

// we also have optional positional , the ? shows we want to make it nullable
void optionalParams(int x, double y, [String? greeting]) {
  optionalParams(3, 4);
  optionalParams(3, 4, 'hi , optionally');
}
// we also have named optional parameters

void nameOptionalParam({
  int? x,
  double? y,
  String? greetings,
}) {
  nameOptionalParam(x: 4, greetings: 'hi');
}

// creating a named required parameters
void nameRequiredParam({
  required int x,
  required double y,
  required String greeting,
}) {
  nameRequiredParam(x: 5, y: 4.5, greeting: "hello");
}
// you can combine named parameters with positional parameters

