import 'package:chat_app/ChatMessages.dart';
import 'package:flutter/material.dart';

class ChatView extends StatefulWidget {
  ChatView({
    Key key,
    this.lastMessage:"",
    this.friendName:"",
  }):super(key: key);
  @override
  _ChatViewState createState() => _ChatViewState();

  final String friendName;
  final String lastMessage;
}

class _ChatViewState extends State<ChatView> {

  String _friendInitial;

  @override
  void initState() {
    // TODO: implement initState

    setState(() {
      _friendInitial = widget.friendName.substring(0,1);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.friendName),
      ),
      body: ListView(
        children: <Widget>[
        ChatMessages(
          isFriend: true,
          isNotPrevious: true,
          friendInitial: _friendInitial,
          message: "I really want to snap",
        ),
//          ChatMessages(
//            isFriend: false,
//            isNotPrevious: true,
//            friendInitial: _friendInitial,
//          ),
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
