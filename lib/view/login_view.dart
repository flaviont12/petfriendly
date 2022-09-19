import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../widgets/component_textField.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final _emailController;
  late final _senhaController;

  @override
  void initState() {
    _emailController = TextEditingController();
    _senhaController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _senhaController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            // padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            padding: EdgeInsets.fromLTRB(20, 100 * 0.2, 20, 0),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                logoWidget("assets/images/Logo - Petfriendly.png"),
                Column(
                  children: [
                    RichText(text: const TextSpan(
                        children: [
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
                            )
                          ),
                        ]
                    )),
                    SizedBox(height: 10),
                    const Text(
                      "Um aplicativo para facilitar sua vida e a do seu pet.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                reusableTextField("Email", false, _emailController),
                reusableTextField("Senha", true, _senhaController),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0, bottom: 10.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: ElevatedButton(
                              onPressed: () async {
                                final email = _emailController.text;
                                final senha = _senhaController.text;
                                try {
                                  final userCredential = await FirebaseAuth
                                      .instance
                                      .signInWithEmailAndPassword(
                                      email: email, password: senha);
                                  print(userCredential);
                                } on FirebaseAuthException catch (e) {
                                  if (e.code == 'user-not-found') {
                                    print("Usuário não encontrado!");
                                  } else if (e.code == 'wrong-password') {
                                    print("Senha incorreta!");
                                  } else if (e.code == 'invalid-email') {
                                    print("E-mail inválido");
                                  }
                                }
                              },
                              child: Text("ENTRAR",
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
                TextButton(
                  onPressed: () {},
                  child: Text("Esqueci minha senha",
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
                    Text("Não possui conta?",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            fontWeight: FontWeight.w400)),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            '/register/', (route) => false);
                      },
                      child: Text("Cadastre-se agora!",
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

Image logoWidget(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 200,
    height: 200,
  );
}
