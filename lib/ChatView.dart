import 'package:chat_app/ChatMessages.dart';
import 'package:flutter/material.dart';

class ChatView extends StatefulWidget {
  @override
  _ChatViewState createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Friend's Name here"),
      ),
      body: ListView(
        children: <Widget>[
        ChatMessages(isFriend: true, isNotPrevious: true,),
          ChatMessages(isFriend: false, isNotPrevious: true,),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            Expanded(
              child:Text("text here"),
            ),
            IconButton(
              icon: Icon(Icons.send),
              onPressed: (){
                print("send message tapped");
              },
            ),
          ],
        ),
      ),
    );
  }
}
