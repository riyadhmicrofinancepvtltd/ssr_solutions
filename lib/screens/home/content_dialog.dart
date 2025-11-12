import 'package:flutter/material.dart';

Future<void> contentDialog ({required BuildContext context, required String title, required String description}) async {
  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: Text(description),
        actions: [
          TextButton(
            child: const Text("Close"),
            onPressed: () {
              Navigator.of(context).pop(); // close dialog
            },
          ),
        ],
      );
    },
  );

}