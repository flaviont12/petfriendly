import 'package:flutter/material.dart';
import 'package:petfriendly/widgets/banner_component.dart';
import 'package:petfriendly/widgets/navigation_drawer_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String consultaBanner = 'assets/images/consulta banner.jpg';
  String adotaBanner = 'assets/images/adota.jpg';
  String adestraBanner = 'assets/images/adestra.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            iconTheme: IconThemeData(color: Color(0xFF07A5A8)),
            centerTitle: true,
            backgroundColor: Colors.white,
            shadowColor: Color(0xFF07A5A8),
            title: Image.asset(
              'assets/images/Logo - Petfriendly.png',
              fit: BoxFit.cover,
              height: 100,
            )),
        body: Padding(
          padding: EdgeInsets.fromLTRB(
              20, MediaQuery
              .of(context)
              .size
              .height * 0.15, 20, MediaQuery
              .of(context)
              .size
              .height * 0.15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              banner("Agendar Consulta", consultaBanner),
              banner("Dicas de Adestramento", adestraBanner),
              banner("Adote", adotaBanner),
            ],
          ),
        ),
        drawer: NavigationDrawerWidget(),
    );
  }
}
