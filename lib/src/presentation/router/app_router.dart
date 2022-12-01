import 'package:flutter/material.dart';
import 'package:petfriendly/src/presentation/view/bottom_bar_view.dart';
import 'package:petfriendly/src/presentation/view/login/login_view.dart';
import 'package:petfriendly/src/presentation/view/pets/my_pets_list_view.dart';
import 'package:petfriendly/src/presentation/view/pets/new_pet_screen.dart';
import 'package:petfriendly/src/presentation/view/register_view.dart';
import 'package:petfriendly/src/presentation/view/splash_screen/splash_screen_view.dart';
import 'package:petfriendly/src/presentation/view/verify_email_view.dart';

class AppRouter {
  const AppRouter();

  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case '/login':
        return MaterialPageRoute(
          builder: (_) => const LoginView(),
        );
      case '/register':
        return MaterialPageRoute(
          builder: (_) => const RegisterView(),
        );
      case '/my_pets':
        return MaterialPageRoute(
          builder: (_) => MyPets(),
        );
      case '/bottom_bar':
        return MaterialPageRoute(
          builder: (_) => const BottomBar(),
        );
      case '/pets/new-create_pet':
        return MaterialPageRoute(
          builder: (_) => const NewPetScreen(),
        );
      case '/verify-email':
        return MaterialPageRoute(
          builder: (_) => const VerifyEmailView(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
