import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 202, 126),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20.0),
            const Text(
              'TalkDM',
              style: TextStyle(
                fontFamily: "Hurricane",
                fontSize: 90,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 15.0),
            Stack(
              children: <Widget>[
                Image.asset('assets/image-1.png'),
                Transform.translate(
                  offset: const Offset(65, -5),
                  child: Image.asset('assets/image-2.png'),
                ),
              ],
            ),
            SizedBox(height: 40),
            const Text(
              'Let’s talk with new friends ',
              style: TextStyle(
                fontFamily: "IbarraRealNova",
                fontSize: 20,
                fontWeight: FontWeight.w200,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size.fromWidth(249),
                backgroundColor: Color.fromRGBO(26, 93, 26, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
              child: const Text(
                'Get Started',
                style: TextStyle(
                  fontFamily: 'Ibarra',
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.yellow,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
