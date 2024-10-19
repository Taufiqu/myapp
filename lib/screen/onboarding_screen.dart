import 'package:flutter/material.dart';
import 'package:myapp/screen/signup_screen.dart';

class Onboardingscreen extends StatelessWidget {
// Suggested code may be subject to a license. Learn more: ~LicenseLog:4076236923.
  const Onboardingscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFFF6F8FB),
        body: Column(children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset("assets/images/gambar.png"),
            ),
          ),
          SafeArea(
              child: Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 70),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                  child: Text(
                    "Let's Start The Journey",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontFamily: 'Poppins-Regular',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 35.0, left: 35.0),
                  child: Text(
                    "Experience seamless digital transactions with JustDuit",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins-Regular',
                      color: Color(0XFFA4A8AE),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 52,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xff1e90ff)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupScreen()));
                      },
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Poppins-Regular',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )),
                ),
                const Padding(
                    padding: EdgeInsets.only(top: 8, bottom: 15),
                    child: Text(
                      "I already have an account",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Poppins-Regular',
                        color: Color(0XFFA4A8AE),
                      ),
                      textAlign: TextAlign.center,
                    ))
              ],
            ),
          )),
        ]));
  }
}
