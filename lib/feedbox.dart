import 'package:flutter/material.dart';
import 'actionbtn.dart';

Widget feedBox(
  String avatarUrl,
  String userName,
  String date,
  String contentText,
  String contentImg,
) {
  return Container(
    margin: EdgeInsets.only(bottom: 20.0),
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12.0),
      color: Color(0xFF262626),
    ),
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(avatarUrl),
                radius: 25.0,
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      date,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          if (contentText != "")
            Text(
              contentText,
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          SizedBox(height: 10.0),
          if (contentImg != "") Image.network(contentImg),
          SizedBox(height: 10.0),
          Divider(thickness: 1.5, color: Color(0xFF505050)),
          Row(
            children: [
              actionButton(Icons.thumb_up, "Like", Color(0xFF505050)),
              actionButton(Icons.comment, "Reply", Color(0xFF505050)),
              actionButton(Icons.share, "Share", Color(0xFF505050)),
            ],
          ),
        ],
      ),
    ),
  );
}
