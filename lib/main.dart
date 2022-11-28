import 'package:flutter/material.dart';
import 'package:petfriendly/constants/routes.dart';
import 'package:petfriendly/services/auth/auth_service.dart';
import 'package:petfriendly/view/bottom_bar_view.dart';
import 'package:petfriendly/view/login_view.dart';
import 'package:petfriendly/view/my_pets_list_view.dart';
import 'package:petfriendly/view/register_view.dart';
import 'package:petfriendly/view/verify_email_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      title: 'PetFriendly',
      home: const MainPage(),
      routes: {
        loginRoute: (context) => const LoginView(),
        registerRoute: (context) => const RegisterView(),
        myPetsRoute: (context) => MyPets(),
        bottomBarRoute: (context) => const BottomBar(),
        verifyEmailRoute: (context) => const VerifyEmailView()
      },
    ),
  );
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: AuthService.firebase().initialize(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.done:
            final user = AuthService.firebase().currentUser;
            if (user != null) {
              if (user.isEmailVerified) {
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
