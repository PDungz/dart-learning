import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  String gender;
  String firstName;
  String lastName;
  String email;
  int age;

  User({
    required this.gender,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.age,
  });

  User copyWith({
    String? gender,
    String? firstName,
    String? lastName,
    String? email,
    int? age,
  }) {
    return User(
      gender: gender ?? this.gender,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      age: age ?? this.age,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gender': gender,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'age': age,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      gender: map['gender'] as String,
      firstName: map['name']['first'] as String,
      lastName: map['name']['last'] as String,
      email: map['email'] as String,
      age: map['dob']['age'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'User(gender: $gender, firstName: $firstName, lastName: $lastName, email: $email, age: $age)';
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.gender == gender &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.email == email &&
        other.age == age;
  }

  @override
  int get hashCode {
    return gender.hashCode ^
        firstName.hashCode ^
        lastName.hashCode ^
        email.hashCode ^
        age.hashCode;
  }
}
