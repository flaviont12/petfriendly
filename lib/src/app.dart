import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petfriendly/main.dart';
import 'package:petfriendly/src/core/constants/routes.dart';
import 'package:petfriendly/src/logic/bloc/auth/auth_bloc.dart';
import 'package:petfriendly/src/presentation/router/app_router.dart';
import 'package:petfriendly/src/presentation/view/bottom_bar_view.dart';
import 'package:petfriendly/src/presentation/view/login/login_view.dart';
import 'package:petfriendly/src/presentation/view/pets/my_pets_list_view.dart';
import 'package:petfriendly/src/presentation/view/pets/new_pet_screen.dart';
import 'package:petfriendly/src/presentation/view/register_view.dart';
import 'package:petfriendly/src/presentation/view/verify_email_view.dart';

class App extends StatelessWidget {
  const App({Key? key, required this.appRouter}) : super(key: key);

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc()..add(const AuthStartRequest()),
      child: AppView(appRouter: appRouter),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({
    Key? key,
    required this.appRouter,
  }) : super(key: key);

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PetFriendly',
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
