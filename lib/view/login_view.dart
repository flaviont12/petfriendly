import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../firebase_options.dart';
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
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
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
      body: FutureBuilder(
        future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        ),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              return SingleChildScrollView(
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
                                      try{
                                        final userCredential = await FirebaseAuth
                                            .instance
                                            .signInWithEmailAndPassword(
                                            email: email, password: senha);
                                        print(userCredential);
                                      } on FirebaseAuthException catch (e) {
                                        if(e.code == 'user-not-found') {
                                          print("Usuário não encontrado!");
                                        }else if (e.code == 'wrong-password') {
                                          print("Senha incorreta!");
                                        }else if (e.code == 'invalid-email') {
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
                            onPressed: () {},
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
              );
            default:
              return Text("Loading...");
          }
        },
      ),
    );
  }
}