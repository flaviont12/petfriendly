import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petfriendly/src/logic/bloc/auth/auth_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AuthState _authState;

  late final AnimationController _fadeAnimationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 1500))..addStatusListener((status) {
    if (status == AnimationStatus.completed) {

      print(_authState);
      if (_authState is Authenticated) {
        Navigator.of(context).pushReplacementNamed('/bottom_bar');
      } else {
        Navigator.of(context).pushReplacementNamed('/login');
      }
    }
  })..forward();
  late final Animation<double> _fadeAnimation = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(parent: _fadeAnimationController, curve: Curves.linear));

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _authState = BlocProvider.of<AuthBloc>(context, listen: true).state;
  }

  @override
  void dispose() {
    _fadeAnimationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeTransition(
        opacity: _fadeAnimation,
        child: Center(
          child: Image.asset('assets/images/Logo - Petfriendly.png'),
        ),
      ),
    );
  }
}
