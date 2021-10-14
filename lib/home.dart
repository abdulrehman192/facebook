
import 'package:flutter/material.dart';

class FB extends StatefulWidget {
  const FB({Key? key}) : super(key: key);

  @override
  _FBState createState() => _FBState();
}

class _FBState extends State<FB> with SingleTickerProviderStateMixin{
 late TabController tabController;

 @override
  void initState() {
    tabController = new TabController( vsync: this,length: 6);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Facebook', style: TextStyle(color: Colors.blue.shade800, fontSize: 26, fontFamily: 'Segoe UI'),),
        backgroundColor: Colors.white,
        actions: <Widget>[
          appBarButton(icon: Icon(Icons.search, size: 25, color: Colors.grey,)),
          appBarButton(icon: Icon(Icons.message, size: 25, color: Colors.grey,)),
        ],
        bottom: TabBar(
          controller: tabController,
          tabs: [
            Tab(icon: Icon(Icons.home, size: 32, color: Colors.blue.shade800,),),
            Tab(icon: Icon(Icons.group, size: 32, color: Colors.blue,),),
            Tab(icon: Icon(Icons.ondemand_video, size: 32, color: Colors.blue,),),
            Tab(icon: Icon(Icons.games, size: 32, color: Colors.blue,),),
            Tab(icon: Icon(Icons.notifications_active, size: 32, color: Colors.blue,),),
            Tab(icon: Icon(Icons.menu, size: 32, color: Colors.blue,),),
          ],
        ),
      ),
    );
  }

  Widget appBarButton({Icon? icon})
  {
    return Container(
      width: 60,
      height: 60,
      child: ElevatedButton(
        onPressed: (){},
        child: icon,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),

          )),
        ),
      ),
    );
  }
}
