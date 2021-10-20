import 'package:facebook/feeds.dart';
import 'package:facebook/games.dart';
import 'package:facebook/groups.dart';
import 'package:facebook/menu.dart';
import 'package:facebook/notification.dart';
import 'package:facebook/videos.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class FB extends StatefulWidget {
  const FB({Key? key}) : super(key: key);

  @override
  _FBState createState() => _FBState();
}

class _FBState extends State<FB> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('facebook',
          style: TextStyle(color: Colors.blue.shade800,
              fontWeight: FontWeight.bold, fontSize: 30),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          TextButton(
              onPressed: (){},
              child: Icon(MdiIcons.facebookMessenger, size: 25,),
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(MdiIcons.facebookMessenger)
          ),
        ],

        bottom: TabBar(
          controller: controller,
          labelColor: Colors.black,
          tabs: [
            Tab(icon: Icon(Icons.home, size: 30,
              color: Colors.blue.shade800,),),
            Tab(icon: Icon(Icons.group, size: 30,
              color: Colors.blue.shade800,),),
            Tab(icon: Icon(Icons.ondemand_video_outlined, size: 30,
              color: Colors.blue.shade800,),),
            Tab(icon: Icon(Icons.view_stream, size: 30,
              color: Colors.blue.shade800,),),
            Tab(icon: Icon(Icons.notifications, size: 30,
              color: Colors.blue.shade800,),),
            Tab(icon: Icon(Icons.menu, size: 30,
              color: Colors.blue.shade800,),),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          Feeds(),
          Groups(),
          Videos(),
          Games(),
          Notify(),
          Menu()
        ],
      ),
    );
  }
}
