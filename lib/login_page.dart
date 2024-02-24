import 'package:flutter/material.dart';
import 'package:flutter_application_1/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 247, 202, 126),
      body: Container(
        margin: EdgeInsets.only(left: 40, right: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Login Now',
              style: TextStyle(
                fontFamily: 'Ibbara',
                fontSize: 60,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(26, 93, 26, 1),
              ),
            ),
            SizedBox(height: 80),
            TextFormField(
              decoration: InputDecoration(labelText: 'email'),
            ),
            TextFormField(
              obscureText: passwordVisible,
              decoration: InputDecoration(
                labelText: 'password',
                suffixIcon: IconButton(
                  icon: Icon(passwordVisible
                      ? Icons.visibility
                      : Icons.visibility_off),
                  onPressed: () {
                    setState(
                      () {
                        passwordVisible = !passwordVisible;
                      },
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size.fromWidth(300),
                  backgroundColor: Color.fromRGBO(26, 93, 26, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: () {},
              child: const Text(
                'Login',
                style: TextStyle(
                  fontFamily: "Ibarra",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(241, 201, 59, 1),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Column(
              children: [
                Text(
                  "Or Login With",
                  style: TextStyle(
                    fontFamily: "Ibarra",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(125, 119, 99, 1),
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size.fromWidth(300),
                  backgroundColor: Color.fromRGBO(253, 244, 214, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.facebook,
                    color: Colors.blueAccent,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Login With Facebook",
                    style: TextStyle(
                        fontFamily: "Ibarra",
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(125, 119, 99, 1)),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size.fromWidth(300),
                  backgroundColor: Color.fromRGBO(253, 244, 214, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/google.png',
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(width: 10),
                  const Text(
                    "Login With Google",
                    style: TextStyle(
                        fontFamily: "Ibarra",
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(125, 119, 99, 1)),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            const Column(
              children: [
                Text(
                  "Don't have an account ?",
                  style: TextStyle(
                      fontFamily: "Ibarra",
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size.fromWidth(300),
                  backgroundColor: Color.fromRGBO(26, 93, 26, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => register(),
                  ),
                );
              },
              child: const Text(
                'SignUp',
                style: TextStyle(
                  fontFamily: "Ibarra",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(241, 201, 59, 1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
