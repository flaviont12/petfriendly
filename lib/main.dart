import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:petfriendly/view/bottom_bar_view.dart';
import 'package:petfriendly/view/home_view.dart';
import 'package:petfriendly/view/login_view.dart';
import 'package:petfriendly/view/my_pets_list_view.dart';
import 'package:petfriendly/view/register_view.dart';
import 'package:petfriendly/view/verify_email_view.dart';

import 'firebase_options.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      title: 'PetFriendly',
      home: const MainPage(),
      routes: {
        '/login/': (context) => const LoginView(),
        '/register/': (context) => const RegisterView(),
        '/my_pets/': (context) => MyPets(),
        '/bottom_bar/': (context) => BottomBar()
      },
    ),
  );
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      ),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.done:
            final user = FirebaseAuth.instance.currentUser;
            if (user != null) {
              if (user.emailVerified) {
                return BottomBar();
              } else {
                return const VerifyEmailView();
              }
            } else {
              return const LoginView();
            }
          default:
            return CircularProgressIndicator();
        }
      },
    );
  }
}
