import 'package:flutter/material.dart';
import 'package:community_material_icon/community_material_icon.dart';

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
              buildMenuItems(),
            ],
          ),
        ),
      ),
    );
  }

  buildMenuItems() {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Wrap(runSpacing: 14, children: [
        buildItem(text: 'Notificações', icon: Icons.doorbell_outlined),
        buildItem(text: 'Adestramento', icon: CommunityMaterialIcons.whistle_outline),
        buildItem(text: 'Denúncia de maus tratos', icon: Icons.warning_amber_outlined),
        const Divider(color: Colors.black54,),
        buildItem(text: 'Suporte', icon: Icons.phone_enabled_outlined),
        buildItem(text: 'Sair', icon: Icons.exit_to_app_outlined),
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

  buildItem({required String text, required IconData icon}) {
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
      onTap: () {},
    );
  }
}
