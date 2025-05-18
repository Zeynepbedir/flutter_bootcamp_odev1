import 'package:arayuz_tasarim_odev/screen/anasayfa.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> widgetOptions = <Widget>[
    const Anasayfa(),
    Text('Index 1: Arama', style: optionStyle),
    Text('Index 2: Profil', style: optionStyle),
    Text('Index 3: Kampanya', style: optionStyle),
  ];

  void secilen(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetOptions[selectIndex],
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        child: const Icon(
          Icons.format_list_bulleted,
          color: Color(0xFFFFD300),
        ),
        backgroundColor: Color(0xFF5D3EBC),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 50,
        color: Colors.white,
        notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: selectIndex == 0 ? Color(0xFF5D3EBC) : Color(0xFFA2A2A2),
              ),
              onPressed: () => secilen(0),
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                color: selectIndex == 1 ? Color(0xFF5D3EBC) : Color(0xFFA2A2A2),
              ),
              onPressed: () => secilen(1),
            ),
            IconButton(
              icon: Icon(
                Icons.person,
                color: selectIndex == 2 ? Color(0xFF5D3EBC) : Color(0xFFA2A2A2),
              ),
              onPressed: () => secilen(2),
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.gift,
                color: selectIndex == 3 ? Color(0xFF5D3EBC) : Color(0xFFA2A2A2),
              ),
              onPressed: () => secilen(3),
            ),
          ],
        ),
      ),
    );
  }
}
