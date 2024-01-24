import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sabak_f12/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isActive = false;
  String? _email;
  String? _phone;

  void _active() {
    if (_phone != null && _email != null) {}
    if (_phone!.isEmpty || _email!.isEmpty) {
      isActive = false;
    } else {
      isActive = true;
    }
    //  print(_phone);
    //  print(_email);
    //  print(isActive);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 7, 102, 80), // Color(0xff076650),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'ТАПШЫРМА - 04',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 40,
                  foregroundImage: AssetImage(
                      'assets/image/orel1.png'), //'assets/image/it1.png'),
                  backgroundColor: Color(0xfffec107),
                ),
                const SizedBox(width: 30),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    alignment: Alignment.center,
                    constraints:
                        const BoxConstraints(maxWidth: 80, maxHeight: 76),
                    child: Image.asset(
                      'assets/image/it1.png', //'assets/image/grand1.png',
                      width: 80,
                      height: 80,
                    ),
                    color: Color(0xff00bcd5),
                  ),
                ),
                const SizedBox(width: 30),
                Image.asset(
                  'assets/image/grand1.png',
                  width: 80,
                  height: 80,
                ),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              'Bakyt Dzhunushov',
              style: GoogleFonts.pacifico(color: Colors.white, fontSize: 40),
            ),
            Text(
              'Flutter DEVELOPER',
              style: GoogleFonts.cabin(
                  color: const Color.fromARGB(255, 168, 243, 210),
                  fontWeight: FontWeight.w400,
                  fontSize: 20),
            ),
            const Divider(
              color: Color.fromARGB(247, 158, 255, 249),
              height: 10,
              indent: 130,
              endIndent: 130,
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  //initialValue: 'phone number',
                  style: const TextStyle(
                    color: Color(0xff076650),
                    fontSize: 20,
                  ),
                  onChanged: (String? phone) {
                    _phone = phone;
                    _active();
                  },
                  decoration: const InputDecoration(
                    filled: true,
                    //labelText: 'Phone',
                    hintText: '+ 996 ### ## ## ##',
                    fillColor: Colors.white,
                    isDense: true,
                    contentPadding: EdgeInsets.all(10),
                    prefixIcon: Icon(
                      Icons.phone,
                      size: 25,
                      color: Color(0xff076650),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  //initialValue: 'email adress',
                  style: const TextStyle(
                    color: Color(0xff076650),
                    fontSize: 20,
                  ),
                  onChanged: (String? email) {
                    _email = email;
                    _active();
                  },
                  decoration: const InputDecoration(
                    filled: true,
                    hintText: 'Enter your email adress',
                    fillColor: Colors.white,
                    isDense: true,
                    contentPadding: EdgeInsets.all(10),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      size: 25,
                      color: Color(0xff076650),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: 40, vertical: 10),
                side: const BorderSide(
                  width: 1.5,
                  color: Colors.white,
                  style: BorderStyle.solid,
                ),
              ),
              onPressed: isActive
                  ? () {
                      if (_phone.toString() == '0700707070' &&
                          _email.toString() == 'baha@gmail.com') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.white,
                            content:
                            
                                Center(
                                  child: Text('Ошибка номера или электронной почты', 
                                  style: TextStyle(backgroundColor: Colors.redAccent, color: Color(0xff076650),
                                  ),),
                                ),
                          ),
                        );
                      }
                    }
                  : null,
              child: const Text(
                'Sign In',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
