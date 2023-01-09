// implementing class as an interface
void main(List<String> args) {
  // OtherClass() as RegularClass;
}

class RegularClass {
  final int myField;
  RegularClass(this.myField);
  int get publicProperty => 123;

  String getSomething() {
    return 'Hello';
  }
}

class OtherClass implements RegularClass {
  @override
  String getSomething() {
    // TODO: implement getSomething
    throw UnimplementedError();
  }

  @override
  // TODO: implement myField
  int get myField => throw UnimplementedError();

  @override
  // TODO: implement publicProperty
  int get publicProperty => throw UnimplementedError();
}

// lets say we hAVE AN ABSTRACT CLASS
abstract class DataReader<t> {
  t readDate();
}
// lets create a method

void myMethod<t>(t arg) {}

class IntegerDataReader implements DataReader<int> {
  @override
  int readDate() {
    print('performing logic');
    return 123;
  }
}

// implementing the data reader
class StringDataReader implements DataReader<String> {
  @override
  String readDate() {
    // TODO: implement readDate
    print('performing logic');
    return 'hello world ';
  }
}
// generic types are placeholder
