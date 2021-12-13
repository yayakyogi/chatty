// ignore_for_file: prefer_const_constructors

import 'package:chatty_app/theme.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({Key? key,this.imageUrl = '', this.name = '', this.text = '', this.time = '',this.unread = true}) : super(key:key);
  
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            height: 55,
            width: 55,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: titleTextStyle,
              ),
              Text(
                text,
                style: unread ? subtitleTextStyle.copyWith(
                  color: blackColor
                  ) : subtitleTextStyle,
              )
            ],
          ),
          Spacer(),
          Text(time, style: subtitleTextStyle)
        ],
      ),
    );
  }
}
