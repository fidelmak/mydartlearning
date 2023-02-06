// ignore_for_file: public_member_api_docs, sort_constructors_first
//import 'dart:convert';

// import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

void main(List<String> args) {
  final person1 = Person(age: 13, name: 'John Doe');
  // person.age++;
  final person1Updates =
      person1.copyWith(name: "Paul Fidelis ", age: person1.age + 1);

  print(
    "my name is : ${person1Updates.name} and my age is : ${person1Updates.age}",
  );
}

@immutable
class Person {
  final String name;
  final int age;
  Person({
    required this.name,
    required this.age,
  });

  Person copyWith({
    String? name,
    int? age,
  }) {
    return Person(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'age': age,
    };
  }
}
