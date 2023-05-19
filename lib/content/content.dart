import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_notes_app/alert_dialog/alert_dialog.dart';
import 'package:my_notes_app/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:my_notes_app/db_helper.dart';
import 'package:my_notes_app/model.dart';
import 'package:my_notes_app/screens/notes.dart';

class Content extends StatefulWidget {
  const Content({Key? key}) : super(key: key);

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  var dbHelper;
  void initState() {
    super.initState();
    dbHelper = DbHelper();
  }

  final titleController = TextEditingController();
  final contentController = TextEditingController();

  saveData() async {
    String title = titleController.text;
    String content = contentController.text;

    if (title.isEmpty) {
      alertDialog("Please Enter Title");
    } else if (content.isEmpty) {
      alertDialog("Please Enter Content");
    } else {
      UserModel uModel = UserModel();

      uModel.title = title;
      uModel.content = content;

      dbHelper = DbHelper();
      await dbHelper.saveData(uModel).then((userData) {}).catchError((error) {
        print(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              TextFormField(
                controller: titleController,
                decoration: const InputDecoration(
                    hintText: 'Title', border: InputBorder.none),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.black,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: contentController,
                decoration: const InputDecoration(
                    hintText: 'Content', border: InputBorder.none),
              ),
              SizedBox(
                height: 100,
              ),
              ElevatedButton(
                  onPressed: () {
                    saveData();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomNavigation()));
                  },
                  child: const Text(
                    "OK",
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
