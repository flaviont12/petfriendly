import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petfriendly/src/core/constants/routes.dart';
import 'package:petfriendly/src/logic/bloc/auth/auth_bloc.dart';
import 'package:petfriendly/src/services/auth/auth_exceptions.dart';
import 'package:petfriendly/src/services/auth/auth_service.dart';
import 'dart:developer' as devtools show log;

import '../../widgets/show_error_dialog.dart';
import '../../widgets/custom_text_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _senhaController.dispose();

    super.dispose();
  }

  void _handleLogin(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      BlocProvider.of<AuthBloc>(context).add(LoginRequest(
          email: _emailController.text, password: _senhaController.text));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthError) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.error)));
          }
          if (state is Authenticated) {
            Navigator.of(context).pushReplacementNamed('/bottom_bar');
          }
        },
        child: SingleChildScrollView(
          child: Padding(
            // padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            padding: const EdgeInsets.fromLTRB(20, 100 * 0.2, 20, 0),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                logoWidget("assets/images/Logo - Petfriendly.png"),
                Column(
                  children: [
                    RichText(
                        text: const TextSpan(children: [
                          TextSpan(
                            text: "Bem-vindo ao ",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          TextSpan(
                              text: "PetFriendly!",
                              style: TextStyle(
                                color: Color(0xFF07A5A8),
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              )),
                        ])),
                    const SizedBox(height: 10),
                    const Text(
                      "Um aplicativo para facilitar sua vida e a do seu create_pet.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      CustomTextField(
                          label: 'E-mail',
                          isPasswordType: false,
                          controller: _emailController),
                      CustomTextField(
                          label: 'Senha',
                          isPasswordType: true,
                          controller: _senhaController),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0, bottom: 10.0),
                  child: Row(
                    children: [
                      Expanded(child: BlocBuilder<AuthBloc, AuthState>(
                        builder: (context, state) {
                          return ElevatedButton(
                              onPressed: () => _handleLogin(context),
                              child: state is AuthLoading
                                  ? const CircularProgressIndicator()
                                  : const Text("ENTRAR",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600)),
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xFF07A5A8),
                                  fixedSize: const Size(120.0, 50.0),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(10.0))));
                        },
                      )),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("Esqueci minha senha",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Não possui conta?",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            fontWeight: FontWeight.w400)),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            registerRoute, (route) => false);
                      },
                      child: const Text("Cadastre-se agora!",
                          style: TextStyle(
                              color: Color(0xFF07A5A8),
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Image logoWidget(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 200,
    height: 200,
  );
}
