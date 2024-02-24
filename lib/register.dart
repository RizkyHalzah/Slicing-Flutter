import 'package:flutter/material.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  bool _isPasswordVisible = false;

  @override
  void initState() {
    super.initState();
    _isPasswordVisible = true;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 202, 126),
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 80),
            const Text(
              "SignUp Now",
              style: TextStyle(
                fontFamily: "Ibarra",
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(26, 93, 26, 1),
              ),
            ),
            SizedBox(height: 50),
            Column(
              children: [
                Container(
                  width: 300,
                  child: const TextField(
                    decoration: InputDecoration(
                        labelText: 'Username',
                        labelStyle: TextStyle(
                          fontFamily: "Ibarra",
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(26, 93, 26, 1),
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Color.fromRGBO(26, 93, 26, 1),
                        ))),
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    Container(
                      width: 300,
                      child: TextField(
                        obscureText: !_isPasswordVisible,
                        decoration: const InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              fontFamily: "Ibarra",
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Color.fromRGBO(26, 93, 26, 1),
                            )),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Color.fromRGBO(26, 93, 26, 1),
                            ))),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    Container(
                      width: 300,
                      child: TextField(
                        obscureText: !_isPasswordVisible,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isPasswordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Color.fromRGBO(26, 93, 26, 1),
                              ),
                              onPressed: () {
                                setState(() {
                                  _isPasswordVisible = !_isPasswordVisible;
                                });
                              },
                            ),
                            labelStyle: TextStyle(
                              fontFamily: "Ibarra",
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Color.fromRGBO(26, 93, 26, 1),
                            )),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Color.fromRGBO(26, 93, 26, 1),
                            ))),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 60),
            Column(
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
            SizedBox(height: 30),
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
                children: [
                  Icon(
                    Icons.facebook,
                    color: Colors.blueAccent,
                  ),
                  SizedBox(width: 10),
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
                children: [
                  Image.asset(
                    'assets/google.png',
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(width: 10),
                  Text(
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
            SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size.fromWidth(300),
                  backgroundColor: Color.fromRGBO(26, 93, 26, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: () {},
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
      )),
    );
  }
}
