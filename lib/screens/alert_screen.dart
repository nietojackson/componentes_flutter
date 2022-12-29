import 'dart:io';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIos(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Title'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('This is the Alert content'),
                SizedBox(height: 10),
                FlutterLogo(size: 100)
              ],
            ),
            actions: [
              TextButton(
                child: const Text(
                  'Cancelar',
                  style: TextStyle(color: Colors.red),
                ),
                onPressed: () => Navigator.pop(context),
              ),
              TextButton(
                child: const Text('Ok'),
                onPressed: () => Navigator.pop(context),
              )
            ],
          );
        });
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 5,
            title: const Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('This is the Alert content'),
                SizedBox(height: 10),
                FlutterLogo(size: 100)
              ],
            ),
            actions: [
              TextButton(
                child: const Text(
                  'Cancelar',
                  style: TextStyle(color: Colors.red),
                ),
                onPressed: () => Navigator.pop(context),
              ),
              TextButton(
                child: const Text('Ok'),
                onPressed: () => Navigator.pop(context),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            child: const Text('Show Alert'),
            onPressed: () => Platform.isIOS
                ? displayDialogIos(context)
                : displayDialogAndroid(context)),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
