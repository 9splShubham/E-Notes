import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_notes_app/core/app_image/images.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 55,
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blueGrey[50],
                  hintText: 'Search',
                  hintStyle: GoogleFonts.comfortaa(),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black)),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Image.asset(
              AppImage.emptySearch,
              height: 200,
              width: 200,
            )
          ],
        ),
      ),
    );
  }
}
