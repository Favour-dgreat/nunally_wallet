import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nunally_wallet/screens/signup.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset(
                    'assets/images/Group.png',
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Earn \$5 every month by keeping your crypto with us",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      '~Watch your money grow',
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    const Icon(
                      FontAwesomeIcons.solidCheckSquare,
                      color: Colors.green,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Open existing wallet',
                        style: TextStyle(fontSize: 20),
                      ),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.black,
                        onSurface: Colors.grey,
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                      child: const Text(
                        'Create new wallet',
                        style: const TextStyle(fontSize: 20),
                      ),
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: Colors.white,
                        side: const BorderSide(color: Colors.black),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
