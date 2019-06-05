import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatHead extends StatefulWidget {
  @override
  _ChatHeadState createState() => _ChatHeadState();
}

class _ChatHeadState extends State<ChatHead> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      width: double.infinity,
      height: 100.0,
      color: Colors.grey[300],
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "<Friend's Name>",
                    style: Theme.of(context).textTheme.title
                  ),
                  Text(
                    "Last Message",
                    style: Theme.of(context).textTheme.body2
                  ),
                  Text("Last Message time"),
                ],
              ),
            ),

            CircleAvatar(
              radius: 32.0,
              child: Text(
                "T",
                style: Theme.of(context)
                  .textTheme
                  .display1
                  .apply(color: Colors.white, fontWeightDelta: 3),
              ),
            )
          ],
        )
    );
  }
}
