import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:petfriendly/constants/routes.dart';

import '../widgets/show_error_dialog.dart';
import '../widgets/textField_component.dart';

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
                reusableTextField("Nome", false, _nomeController),
                reusableTextField("Sobrenome", false, _sobrenomeController),
                reusableTextField("Email", false, _emailController),
                reusableTextField("Senha", true, _senhaController),
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
                                  await FirebaseAuth
                                      .instance
                                      .createUserWithEmailAndPassword(
                                          email: email, password: senha);
                                  final user = FirebaseAuth.instance.currentUser;
                                  await user?.sendEmailVerification();
                                  Navigator.of(context).pushNamed(verifyEmailRoute);
                                } on FirebaseAuthException catch (e) {
                                  if (e.code == 'weak-password') {
                                    await showErrorDialog(context,
                                        "Senha fraca, experimente uma senha melhor!");
                                  } else if (e.code == 'email-already-in-use') {
                                    await showErrorDialog(
                                        context, "E-mail já cadastrado");
                                  } else if (e.code == 'invalid-email') {
                                    await showErrorDialog(
                                        context, "E-mail inválido");
                                  } else {
                                    await showErrorDialog(
                                        context, "Error ${e.code}");
                                  }
                                } catch (e) {
                                  await showErrorDialog(
                                      context, e.toString());
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
