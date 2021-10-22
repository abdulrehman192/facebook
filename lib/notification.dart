
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Notify extends StatefulWidget {
  const Notify({Key? key}) : super(key: key);

  @override
  _NotifyState createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      child: Column(
        children: <Widget>[
           Container(
             width: MediaQuery.of(context).size.width,
             height: 60,
             color: Colors.white,
             padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 Text('Notifications', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                 CircleAvatar(
                   backgroundColor: Colors.grey,
                   child: IconButton(
                       onPressed: (){},
                       icon: Icon(Icons.search, color: Colors.black,),
                     iconSize: 27,
                   ),
                 )
               ],
             ),
           ),
          Expanded(
            child: notificationList()
          )
        ],
      ),
    );
  }

  Widget notificationList()
  {
    return Container(
      child: ListView.builder(
          itemCount: 200,
          itemBuilder: (context, index)
          {
            return InkWell(
              splashColor: Colors.grey.shade400,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                color: Colors.blue.shade100,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/Video.jpg'),
                  ),
                  title: Text('Username and 60 other people reacted to a post you shared',overflow: TextOverflow.clip,style: TextStyle(fontWeight: FontWeight.bold),),
                  trailing: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.more_horiz),
                  ),
                  subtitle: Text('13 minutes ago'),
                ),
              ),
            );
          }
      ),
    );
  }
}
