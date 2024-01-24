
//import 'package:dart_sabak_11/dart_sabak_11.dart' as dart_sabak_11;
import 'model.dart';

final student = <Student>[bakyt, Samara, Nargiza, Nurkadyr];
void main(List<String> argument) {
controlEmailPhone('phone', 'email');
//  print('Hello World: ${dart_sabak_11.calculate()}');
}

void controlEmailPhone(String phone, String email) {
  for (final student in student) {
  //  print(student.name);
  if (phone == student.phone && email == student.email) {
    print('Kosh keliniz ${student.name}');
  } else {
    print('Kechiresiz phone je email kata');
  }
  }
}