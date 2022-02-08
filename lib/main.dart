import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nunally_wallet/auth/auth_services.dart';
import 'package:nunally_wallet/screens/screen1.dart';
import 'package:nunally_wallet/screens/signup.dart';
import 'package:nunally_wallet/screens/wrapper.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const NunallyWallet());
}

class NunallyWallet extends StatelessWidget {
  const NunallyWallet({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(
          create: (_) => AuthService(),
        ),
      ],
      child: MaterialApp(
        title: 'Nunally Wallet',
        theme: ThemeData(),
        initialRoute: '/',
        routes: {
          '/': (context) => const Wrapper(),
          '/login': (context) => const LandingPage(),
          '/signup': (context) => const SignUp(),
        },
        home: const LandingPage(),
      ),
    );
  }
}
