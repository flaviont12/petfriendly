import 'package:flutter/material.dart';
import 'package:petfriendly/src/core/constants/routes.dart';
import 'package:petfriendly/src/services/auth/auth_exceptions.dart';
import 'package:petfriendly/src/services/auth/auth_service.dart';


import '../widgets/show_error_dialog.dart';
import '../widgets/custom_text_field.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  late final _nomeController;
  late final _sobrenomeController;
  late final _emailController;
  late final _senhaController;

  @override
  void initState() {
    _nomeController = TextEditingController();
    _sobrenomeController = TextEditingController();
    _emailController = TextEditingController();
    _senhaController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _nomeController.dispose();
    _sobrenomeController.dispose();
    _emailController.dispose();
    _senhaController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil(loginRoute, (route) => false);
              },
              color: Colors.black),
          title: const Text(
            "CRIAR CONTA",
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Montserrat',
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          shadowColor: Color(0xFF07A5A8),
        ),
        body: SingleChildScrollView(
          child: Padding(
            //padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            padding: EdgeInsets.fromLTRB(20, 100 * 0.2, 20, 0),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Crie sua conta agora e acompanhe a saúde do seu bichinho!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
                CustomTextField(label: "Nome", isPasswordType: false, controller: _nomeController),
                CustomTextField(label: "Sobrenome", isPasswordType: false, controller: _sobrenomeController),
                CustomTextField(label: "Email", isPasswordType: false, controller: _emailController),
                CustomTextField(label: "Senha", isPasswordType: true, controller: _senhaController),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0, bottom: 10.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: ElevatedButton(
                              onPressed: () async {
                                final nome = _nomeController.text;
                                final sobrenome = _sobrenomeController.text;
                                final email = _emailController.text;
                                final senha = _senhaController.text;
                                try {
                                  await AuthService.firebase().createUser(email: email, password: senha);
                                  AuthService.firebase().sendEmailVerification();
                                  Navigator.of(context).pushNamed(verifyEmailRoute);
                                } on WeakPasswordAuthException {
                                  await showErrorDialog(context,
                                      "Senha fraca, experimente uma senha melhor!");
                                } on EmailAlreadyInUseAuthException {
                                  await showErrorDialog(
                                      context, "E-mail já cadastrado");
                                } on InvalidEmailAuthException {
                                  await showErrorDialog(
                                      context, "E-mail inválido");
                                } on GenericAuthException {
                                  await showErrorDialog(
                                      context, "Ocorreu um erro de autenticação...");
                                }
                              },
                              child: Text("CADASTRAR",
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
                                          BorderRadius.circular(10.0))))),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Já possui uma conta?",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            fontWeight: FontWeight.w400)),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            loginRoute, (route) => false);
                      },
                      child: Text("Entrar",
                          style: TextStyle(
                              color: Color(0xFF07A5A8),
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}