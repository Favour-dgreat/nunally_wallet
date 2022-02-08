import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        elevation: 0,
        title: const Text(
          'Nunally',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: SizedBox(
              height: 130,
              child: Container(
                child: Image.asset('assets/images/Colorfuldesign.png'),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Login',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 22),
          ),
          SizedBox(
            height: 22,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Email',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'e.g. Johndoe@gmail.com',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Password',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Type your password',
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
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
              ),
            ],
          )
        ],
      ),
    );
  }
}
