class Student {
  final int id;
  final String name;
  final String lastName;
  final String email;
  final String gender;
  final String location;
  String group;
  int phone;
  bool married;
  int? age;
  String? address;
  
  Student({
    required this.id,
    required this.name,
  required this.lastName,
  required this.email,
  required this.gender,
  required this.location,
  required this.group,
  required this.phone,
  required this.married,
  required this.age,
  required this.address,
 
  });
}

final bakyt = Student(
  id: 1, 
  name: 'Bakyt', 
  lastName: 'Junushov', 
  email: 'baha@gmail.com', 
  gender: 'male', 
  location: 'I-Kul', 
  group: '1', 
  phone: 0222222085, 
  married: true, 
  age: 50, 
  address: 'Bishkek');

  final Samara = Student(
  id: 2, 
  name: 'Samara', 
  lastName: 'Stambekova', 
  email: 'Samara@gmail.com', 
  gender: 'female', 
  location: 'J-Abad', 
  group: '1', 
  phone: 0770, 
  married: true, 
  age: 44, 
  address: 'Osh');

  final Nargiza = Student(
  id: 3, 
  name: 'Nargiza', 
  lastName: 'Kulmamyrova', 
  email: 'Kulm@gmail.com', 
  gender: 'female', 
  location: 'Chui', 
  group: '1', 
  phone: 079653111987, 
  married: true, 
  age: 36, 
  address: 'Moscow');

  final Nurkadyr = Student(
  id: 4, 
  name: 'Nurkadyr', 
  lastName: 'Asanbek uulu', 
  email: 'Nur@gmail.com', 
  gender: 'male', 
  location: 'Bishkek', 
  group: '1', 
  phone: 0770101010, 
  married: true, 
  age: 25, 
  address: 'Europe');