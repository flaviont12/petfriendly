import 'package:flutter/material.dart';
import 'package:petfriendly/src/presentation/view/home_view.dart';
import 'package:petfriendly/src/presentation/view/pets/my_pets_list_view.dart';


class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int index = 0;
  static final List<Widget> _screenOptions = <Widget>[
    HomePage(),
    MyPets(),
    const Text("Calendario"),
    const Text("Menu"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenOptions[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: Color(0xFF07A5A8),
            labelTextStyle: MaterialStateProperty.all(
                TextStyle(fontSize: 14, fontWeight: FontWeight.w500))),
        child: NavigationBar(
          height: 60,
          backgroundColor: Color(0xFFE7E6E9),
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.home_outlined), label: "Home"),
            NavigationDestination(icon: Icon(Icons.pets), label: "Meus Pets"),
            NavigationDestination(
                icon: Icon(Icons.calendar_today_outlined), label: "Calendário"),
            // NavigationDestination(icon: Icon(Icons.menu), label: "Menu"),
          ],
        ),
      ),
    );
  }
}
