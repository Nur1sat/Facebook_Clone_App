import 'package:flutter/material.dart';

Widget actionButton(IconData icon, String actionTitle, Color iconColor) {
  return Expanded(
    child: TextButton.icon(
      onPressed: () {},
      icon: Icon(icon, color: iconColor),
      label: Text(actionTitle, style: TextStyle(color: Colors.white)),
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 12),
        backgroundColor: Colors.blue,
      ),
    ),
  );
}
