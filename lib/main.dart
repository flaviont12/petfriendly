import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:petfriendly/view/login_view.dart';
import 'package:petfriendly/view/register_view.dart';

import 'firebase_options.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      title: 'PetFriendly',
      home: const HomePage(),
      routes: {
        '/login/': (context) => const LoginView(),
        '/register/': (context) => const RegisterView(),
      },
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      ),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.done:
          // final user = FirebaseAuth.instance.currentUser;
          // if (user?.emailVerified ?? false) {
          // } else {
          //   return const VerifyEmailView();
          // }
            return LoginView();
            return Text("Done");
          default:
            return CircularProgressIndicator();
        }
      },
    );
  }
}
