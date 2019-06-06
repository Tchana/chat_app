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

  TextEditingController _controller = TextEditingController();

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
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView(
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
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child:TextFormField(
                    controller: _controller,
                    onFieldSubmitted: (String _message){
                      print("on field submitted " + _message);
                    },
                    decoration: InputDecoration(
                      hintText: "Type your message here",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: IconButton(
                      icon: Icon(
                        Icons.send,
                        color: Colors.blue,
                      ),
                      onPressed: (){
                        print("send message tapped>> " + _controller.text);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
