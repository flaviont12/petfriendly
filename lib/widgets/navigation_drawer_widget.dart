import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'dart:developer' as devtools show log;

import 'package:petfriendly/constants/routes.dart';

class NavigationDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SingleChildScrollView(
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          color: Color(0xFF07A5A8),
          child: ListView(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            children: <Widget>[
              buildHeader(context,
                  image: AssetImage('assets/images/flavio.jpg')),
              buildMenuItems(context),
            ],
          ),
        ),
      ),
    );
  }

  buildMenuItems(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Wrap(runSpacing: 14, children: [
        buildItem(context,
            text: 'Notificações',
            icon: Icons.doorbell_outlined,
            acao: 'notificações'),
        buildItem(context,
            text: 'Adestramento',
            icon: CommunityMaterialIcons.whistle_outline,
            acao: 'adestramento'),
        buildItem(context,
            text: 'Denúncia de maus tratos',
            icon: Icons.warning_amber_outlined,
            acao: 'denuncia'),
        const Divider(
          color: Colors.black54,
        ),
        buildItem(context,
            text: 'Suporte',
            icon: Icons.phone_enabled_outlined,
            acao: 'suporte'),
        buildItem(context,
            text: 'Sair', icon: Icons.exit_to_app_outlined, acao: 'logout'),
      ]),
    );
  }

  buildHeader(BuildContext context, {required ImageProvider image}) {
    return Container(
      color: Color(0xFF07A5A8),
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: Column(
        children: [
          CircleAvatar(
            radius: 52,
            backgroundImage: image,
            // child: Image.asset('assets/images/flavio.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Flávio Neto",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  buildItem(BuildContext context,
      {required String text, required IconData icon, required String acao}) {
    final color = Color(0xFF07A5A8);

    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        text,
        style: TextStyle(color: color),
      ),
      onTap: () async {
        if (acao == 'logout') {
          final shouldLogout = await showLogOutDialog(context);
          if(shouldLogout) {
            await FirebaseAuth.instance.signOut();
            Navigator.of(context).pushNamedAndRemoveUntil(loginRoute, (_) => false);
          }
        }
      },
    );
  }
}

Future<bool> showLogOutDialog(BuildContext context) {
  return showDialog<bool>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text("Sair"),
        content: const Text("Tem certeza que deseja sair do aplicativo?"),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: Text("Não, quero continuar logado!")),
          TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: Text("Sim, quero sair!"))
        ],
      );
    },
  ).then((value) => value ?? false);
}
