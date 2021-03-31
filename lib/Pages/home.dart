import 'package:clone_whatsapp/Pages/calls.dart';
import 'package:clone_whatsapp/Pages/camera.dart';
import 'package:clone_whatsapp/Pages/chats.dart';
import 'package:clone_whatsapp/Pages/status.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Whatsapp".text.make(),
        centerTitle: false,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              text: "CAMERA",
              iconMargin: EdgeInsets.all(2.0),
              icon: Icon(
                Icons.camera_alt,
                size: 30,
              ),
            ),
            Tab(
              text: "CHATS",
              iconMargin: EdgeInsets.all(2.0),
              icon: Icon(
                CupertinoIcons.chat_bubble_2,
                size: 30,
              ),
            ),
            Tab(
              text: "STATUS",
              iconMargin: EdgeInsets.all(2.0),
              icon: Icon(
                CupertinoIcons.smallcircle_fill_circle,
                size: 30,
              ),
            ),
            Tab(
              text: "CALLS",
              iconMargin: EdgeInsets.all(2.0),
              icon: Icon(
                CupertinoIcons.phone,
                size: 30,
              ),
            ),
          ],
        ),
        actions: [
          Icon(Icons.search),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
          Icon(Icons.more_vert),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallsScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}
