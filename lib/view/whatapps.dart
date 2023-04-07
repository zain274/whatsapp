import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsappclone/chat,status,call/callview.dart';
import 'package:whatsappclone/chat,status,call/chat_view.dart';
import 'package:whatsappclone/chat,status,call/status.dart';

class whatApps extends StatelessWidget {
  const whatApps({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
     appBar: AppBar(title:const Text("WhatsApp"),backgroundColor:  Color(0xFF128c7e),
        
        actions: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Icon(Icons.wifi_outlined),
          ),
  Padding(
            padding: const EdgeInsets.all(14.0),
            child: Icon(Icons.dark_mode_rounded),
          ),


Padding(
            padding: const EdgeInsets.all(14.0),
            child: Icon(Icons.search),

          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Icon(Icons.camera_alt_outlined),
          ),

          
PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text("GB Settings")),
                PopupMenuItem(child: Text("Message Scheduler")),
                PopupMenuItem(child: Text("Auto Reply")),
                PopupMenuItem(child: Text("Restart WhatsApp")),
                PopupMenuItem(child: Text("Message a number")),
                PopupMenuItem(child: Text("Mass Message Sender")),
                
                
                
                
                
                
                PopupMenuItem(child: Text("New group")),
                PopupMenuItem(child: Text("New broadcast")),
                PopupMenuItem(child: Text("Linked devices")),
                PopupMenuItem(child: Text("Starred messages")),
                PopupMenuItem(child: Text("Settings"))
              ];
  })
        ],
        bottom: TabBar(tabs: [
             Tab(
              child: Text("Groups"),
            ),
            Tab(
              child: Text("Chats"),
            ),
           
            Tab(
              child: Text("Status"),
            ),
            Tab(
              child: Text("Calls"),
            )
         ]
      ),

          
          

        ),
        body: Container(
          child: TabBarView(children: [
            Center(child: Text("Group"),),
            chatview(),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: status_view(),
            ),
            calls_view()
          
          ]),
        ),
          floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Color(0xFF128c7e),
          )
      
      ),
      

    );
  }
}