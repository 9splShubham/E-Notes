import 'package:flutter/material.dart';
import 'package:my_notes_app/alert_dialog/navigator_key.dart';

alertDialog(String msg) {
  //Toast.show(msg, context, duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
  //Toast.show(msg, duration: Toast.lengthShort, gravity: Toast.bottom);
  print('msg--$msg');
  print(
      'NavigatorKey.navigatorKey.currentContext--${NavigatorKey.navigatorKey.currentContext}');
  showAlertDialog(NavigatorKey.navigatorKey.currentContext!, msg);
}

showAlertDialog(BuildContext context, String msg) {
  // set up the button
  Widget okCancel = TextButton(
    child: Text(
      "Cancel",
    ),
    onPressed: () {
      Navigator.pop(context);
    },
  );
  Widget okButton = TextButton(
    child: Text(
      "OK",
    ),
    onPressed: () {
      // onLogout();
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Alert"),
    content: Text(msg),
    actions: [
      okCancel,
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
