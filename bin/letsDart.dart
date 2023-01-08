//variables

class Practice {}
// var value = 15;
// var myName = 'Alberto';

// int newvalue = 12;

// String hisName = 'Tosin';

// // dynamic
// dynamic ourValue = 10;
// dynamic theirName = 'Roy';

// // initialization
// // var pizza = List<List<Toppings>>();
// // for(var topping in pizza){
// //   doSomething(topping);// this code will be addressed later
// // }

// // late
// // late List<String> names;
// // if(iwantFriends())
// //   names=friends.getNames();
// // else
// //   names= haters.getName();

// //final
// final Gname = 'Richard';
// //Gname = 'Richard';// this name cannot be changed

// getRandomInteger() {
//   String fame = 'royalty';
//   return fame;
// }

// final rand = getRandomInteger();
// //rand = 0;// this also throws an error;

// // Data types . types in dart can be literals for example true is a boolean and 'text' is a String literal

// // Good practice

// String allValue = '17';

// var a = int.parse(allValue); // this convert string to integer
// var b = double.parse('0.98'); // this convert all Value to decimal
// var c = int.parse('13', radix: 0); // convert from 13 base 6

// // if the string is not a number, val is null
// double? val = double.tryParse('120.3x_'); // null
// double? val2 = double.tryParse('120.333'); //
// void main(List<String> args) {
//   print(val2);
// }

//void main(List<String> args) {
// using StringBuffer which concatenates strings for example

// var xValue = "";
// for (var i = 0; i < 90; ++i) {
//   xValue += "$i ";
// }
// ;
// print(xValue);

// using buffer
// var buffer = StringBuffer();
// for (var i = 0; i < 90; ++i) {
//   buffer.write("$i ");
// }
// ;
// var value = buffer.toString();
// print(value);
//}
//enumerated types
// this are containers for constant values
enum Fruits { Apple, Pear, Grapes, Banana, Orange }

void main(List<String> args) {
  Fruits liked = Fruits.Apple;
  var disliked = Fruits.Banana;
  print(liked.toString());
  print(disliked.toString());

  // you can also access this number by index
  var a = Fruits.Apple.index;
  var b = Fruits.Pear.index;
  var c = Fruits.Grapes.index;
  print(a);
  print(b);
  print(c);

  var d = c + b;

  print(d);
}
