import 'package:clone_whatsapp/Models/chatmodel.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, index) => Column(
        children: [
          Divider(
            height: 10.0,
          ),
          ListTile(
            onTap: () {
              print("Tapped");
            },
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              onBackgroundImageError: (exception, stackTrace) {
                print("Error");
              },
              backgroundImage: NetworkImage(dummyData[index].dp),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                dummyData[index].name.text.bold.make(),
                dummyData[index].time.text.gray800.lg.bold.make()
              ],
            ),
            subtitle: Container(
              child: dummyData[index].message.text.bold.make(),
            ).pOnly(top: 5.0),
          )
        ],
      ),
    );
  }
}
