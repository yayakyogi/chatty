// ignore_for_file: prefer_const_constructors

import 'package:chatty_app/theme.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        child: Row(
          children: [
            Image.asset(
              'assets/images/group1.png',
              width: 55,
              height: 55,
            ),
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jakarta Fire',
                  style: titleTextStyle,
                ),
                Text(
                  '14,209 members',
                  style: subtitleTextStyle,
                )
              ],
            ),
            Spacer(),
            Image.asset(
              'assets/images/call_btn.png',
              width: 50,
              height: 50,
            ),
          ],
        ),
      );
    }

    Widget send({
      String imageUrl='',
      String text='',
      String time='',
    }) {
      return Container(
          margin: EdgeInsets.only(bottom: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 11,
                ),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      time,
                      style: TextStyle(fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              ),
              SizedBox(width: 12),
              Image.asset(
                imageUrl,
                width: 40,
                height: 40,
              )
            ],
          ));
    }

    Widget receive({
      String imageUrl='',
      String text='',
      String time='',
    }) {
      return Container(
          margin: EdgeInsets.only(bottom: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset(
                imageUrl,
                width: 40,
                height: 40,
              ),
              SizedBox(width: 12),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 11,
                ),
                decoration: BoxDecoration(
                  color: Color(0xffEAEFF3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      time,
                      style: TextStyle(fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              ),
            ],
          ));
    }

    Widget body() {
      return Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              receive(
                imageUrl: 'assets/images/friends1.png',
                text: 'How are you guys?',
                time: '02:30'
              ),
              receive(
                imageUrl: 'assets/images/friends2.png',
                text: 'Find here :P',
                time: '03:11'
              ),
              send(
                imageUrl: 'assets/images/friends3.png',
                text: 'Thinking about how to deal \nwith this client from hell...',
                time: '22:08'
              ),
              receive(
                imageUrl: 'assets/images/friends4.png',
                text: 'Love them',
                time: '23:11'
              ),
            ],
          ),
        ),
      );
    }

    Widget chatInput() {
      return Container(
        width: MediaQuery.of(context).size.width - (2*30),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(75)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Type message',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 16,
                color: Color(0xff999999)
              ),
            ),
            Image.asset(
              'assets/images/send_btn.png',
              width: 35,
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffF8FAFC),
      floatingActionButton: chatInput(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
          child: Column(
        children: [header(), body()],
      )),
    );
  }
}
