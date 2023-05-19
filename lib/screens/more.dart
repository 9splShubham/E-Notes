import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_symbols_icons/symbols.dart';

class More extends StatefulWidget {
  const More({Key? key}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 17,
              backgroundColor: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(4), // Border radius
                child: ClipOval(
                    child: Icon(
                  Symbols.person,
                  color: Colors.white,
                )),
              ),
            ),
            title: Text(
              "Nextcloud Login",
              style: GoogleFonts.comfortaa(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Sync Notes to cloud",
              style: GoogleFonts.comfortaa(),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 17,
              backgroundColor: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(4), // Border radius
                child: ClipOval(
                    child: Icon(
                  Symbols.label,
                  color: Colors.white,
                )),
              ),
            ),
            title: Text(
              "Labels",
              style: GoogleFonts.comfortaa(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Create labels",
              style: GoogleFonts.comfortaa(),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 17,
              backgroundColor: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(4), // Border radius
                child: ClipOval(
                    child: Icon(
                  Symbols.restore,
                  color: Colors.white,
                )),
              ),
            ),
            title: Text(
              "Backup & Restore",
              style: GoogleFonts.comfortaa(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Bring back the dead",
              style: GoogleFonts.comfortaa(),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 17,
              backgroundColor: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(4), // Border radius
                child: ClipOval(
                    child: Icon(
                  Symbols.lock,
                  color: Colors.white,
                )),
              ),
            ),
            title: Text(
              "App Lock",
              style: GoogleFonts.comfortaa(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Secure your notes",
              style: GoogleFonts.comfortaa(),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 17,
              backgroundColor: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(4), // Border radius
                child: ClipOval(
                    child: Icon(
                  Symbols.dark_mode,
                  color: Colors.white,
                )),
              ),
            ),
            title: Text(
              "App Theme",
              style: GoogleFonts.comfortaa(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Light",
              style: GoogleFonts.comfortaa(),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 17,
              backgroundColor: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(4), // Border radius
                child: ClipOval(
                    child: Icon(
                  Symbols.info,
                  color: Colors.white,
                )),
              ),
            ),
            title: Text(
              "About",
              style: GoogleFonts.comfortaa(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Know the Team",
              style: GoogleFonts.comfortaa(),
            ),
          )
        ],
      ),
    );
  }
}
