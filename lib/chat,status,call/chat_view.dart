import 'package:flutter/material.dart';
import 'package:whatsappclone/chat,status,call/chat.dart';

Widget chatview(){
  return ListView.builder(itemCount:chat.length ,
  
  itemBuilder: (context, index) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.white,
        backgroundImage: NetworkImage(chat[index]['pic']),
        radius: 25,
      ),

      title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: Text(chat[index]['name'],
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                fontFamily: "Helvetica Neue",
              )),
        ),
        subtitle: Text(chat[index]['message']),
        trailing: Column(
          children: [
            Text(
              chat[index]['time'],
              style: TextStyle(
                height: -1,
              ),
            ),
            Icon(chat[index]['icon'])
          ],
        ),
    );
  },
  );
}