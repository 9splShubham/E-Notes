import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:my_notes_app/core/app_image/images.dart';
import 'package:my_notes_app/screens/more.dart';
import 'package:my_notes_app/screens/notes.dart';
import 'package:my_notes_app/screens/search.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigation> {
  int selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Container(
            height: 20,
            child: Image.asset(
              AppImage.imageLogo,
            ),
          ),
          title: Text(
            "Notes",
            style: GoogleFonts.comfortaa(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: const Icon(Icons.grid_view_rounded),
            ),
          ]),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: GoogleFonts.comfortaa(),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Symbols.menu),
            label: "Notes",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "More"),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
        elevation: 0,
        selectedIconTheme: IconThemeData(size: 30),
      ),
      body: IndexedStack(
        index: selectedIndex,
        children: [
          Notes(),
          Search(),
          More(),
        ],
      ),
    );
  }
}
