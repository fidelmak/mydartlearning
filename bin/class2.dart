// creating a private variables using an underscore

class Example {
  int public;
  int _private;

  Example(this.public, this._private); // this is a contructor

  // we can also have a named constructor like this

  Example.namedConstructor({
    required this.public,
    required int privateParameter,
  }) : _private = privateParameter;

  // create a method
  void myMethod() {
    _private;
  }
}

// we can also make constructors private
class NonInstantiatable {
  NonInstantiatable._();
}

// instantiate the class
void main(List<String> args) {
  final x = Example(1, 2);
  x._private;
}
