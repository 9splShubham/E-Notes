import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_notes_app/content/content.dart';
import 'package:my_notes_app/core/app_image/images.dart';
import 'package:my_notes_app/model.dart';

class Notes extends StatefulWidget {
  Notes({Key? key}) : super(key: key);

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  List<UserModel> uModel = [];

  var dbHelper;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Image.asset(
              AppImage.emptyLogo,
              height: 150,
              width: 150,
            ),
            ListView.builder(
                itemCount: uModel.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  UserModel item = uModel[index];
                  return Card(
                    child: Column(
                      children: [
                        Text(item.title!),
                        Text(item.content!),
                      ],
                    ),
                  );
                }),
            SizedBox(
              height: 400,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Content()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
