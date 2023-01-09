// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:meta/meta.dart';

void main(List<String> args) {
  final person = Person(name: "tunde", age: 15);
  // person.age++;

  // final personUpdated = Person(age: person.age + 1, name: person.name);
  // instead of calling this manually we can use this above

  final personUpdated = person.copyWith(age: person.age + 1);
}

@immutable
class Person {
  final String name;
  final int age; // all this data is immutable
  const Person({
    required this.name,
    required this.age,
  });

  // const Person({
  //   required this.name,
  //   required this.age,
  // });

  // Person copyWith({
  //   String? name,
  //   int? age,
  // }) {
  //   return Person(name: name ?? this.name, age: age ?? this.age);
  // }

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

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      name: map['name'] as String,
      age: map['age'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Person.fromJson(String source) =>
      Person.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Person(name: $name, age: $age)';

  @override
  bool operator ==(covariant Person other) {
    if (identical(this, other)) return true;

    return other.name == name && other.age == age;
  }

  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}

/// we can also us meta from our meta packages 
/// //we can use dart extension 
