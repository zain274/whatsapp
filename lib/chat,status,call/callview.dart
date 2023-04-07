import 'package:flutter/material.dart';
import 'package:whatsappclone/chat,status,call/call.dart';

Widget calls_view() {
  return ListView.builder(
    itemCount: call.length,
    itemBuilder: (
      context,
      index,
    ) {
      return ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: NetworkImage(call[index]['pic']),

          radius: 40,
        ),
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: Text(call[index]['name'],
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                fontFamily: "Helvetica Neue",
              )),
        ),
        subtitle: Row(
          children: [
            Icon(
              
              call[index]['icon'],size: 20.0,),
            SizedBox(width: 25,),
            Padding(
              padding: const EdgeInsets.only(right: 34),
              child: Text(call[index]['time'],
               style: TextStyle(
                height: -1,
              ),
              ),
            )
          ],
        ),

trailing: Icon(call[index]['icons']),

      );
    },
  );
}