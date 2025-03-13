import 'package:flutter/material.dart';

Widget storyTile(String avatarUrl, String storyUrl, String userName) {
  return Container(
    margin: EdgeInsets.only(right: 20.0),
    height: 144.0,
    width: 120.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12.0),
      image: DecorationImage(image: NetworkImage(storyUrl), fit: BoxFit.cover),
    ),
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(backgroundImage: NetworkImage(avatarUrl)),
          Expanded(child: Container()),
          Text(
            userName,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    ),
  );
}
