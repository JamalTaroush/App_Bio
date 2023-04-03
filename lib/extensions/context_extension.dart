import 'package:flutter/material.dart';

extension ContextExtension on BuildContext{
  void showSnackBar({required String message, bool error = false}) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor:error ? Colors.red: Colors.blue,
      duration: Duration(seconds: 3),
      behavior: SnackBarBehavior.floating,
      // margin:EdgeInsets.all(20) ,
      // width: 100,
      dismissDirection: DismissDirection.horizontal,
      onVisible: () => print('Visible'),
      action: SnackBarAction(
          label: 'UNDO', textColor: Colors.yellowAccent, onPressed: () {}),
    ));
  }
}