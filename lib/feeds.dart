
import 'package:flutter/material.dart';

class Feeds extends StatefulWidget {
  const Feeds({Key? key}) : super(key: key);

  @override
  _FeedsState createState() => _FeedsState();
}

class _FeedsState extends State<Feeds> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            postCard(),
            SizedBox(height: 8.0,),
            roomCard(),
            SizedBox(height: 8,),
            storyCard(),
          ],
        ),
      ),
    );
  }


  Widget storyCard()
  {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                itemCount: 50,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index)
                {
                  return Container(
                      width: 80,
                      height: 180,
                      margin: EdgeInsets.symmetric(horizontal: 3.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.blue
                      ),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }

  Widget roomCard()
  {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: Column(
        children: <Widget>[
          Container(
              alignment: Alignment.centerLeft,
              child: Text('Audio and Video Rooms',style: TextStyle(fontWeight: FontWeight.bold),)
          ),
          SizedBox(height: 8,),
          Expanded(
            child: ListView.builder(
                itemCount: 50,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index)
                {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 3.0),
                      child: CircleAvatar(

                      ));
                }
            ),
          ),
        ],
      ),
    );
  }

  Widget postCard()
  {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: 111,
      padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                radius: 23,
                backgroundImage: AssetImage('assets/images/Video.jpg'),
              ),
              //Textfield for search
              Container(
                width: MediaQuery.of(context).size.width - 100,
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                margin: EdgeInsets.only(left: 12.0),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(25.0),
                    border: Border.all(color: Colors.grey,width: 1.0)
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'What`s on your mind?'
                  ),
                ),
              )
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              postButton(icon: Icon(Icons.video_call_rounded, color: Colors.red,), buttonText: 'Live'),
              Container(
                width: 1,
                height: 25,
                color: Colors.grey,
              ),
              postButton(icon: Icon(Icons.photo_library, color: Colors.green,), buttonText: 'Photo'),
              Container(
                width: 1,
                height: 25,
                color: Colors.grey,
              ),
              postButton(icon: Icon(Icons.video_call_rounded, color: Colors.purple,), buttonText: 'Room'),

            ],
          )
        ],
      ),
    );
  }

  Widget postButton({required Icon icon, String? buttonText})
  {
    return Container(
      height: 25,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          foregroundColor: MaterialStateProperty.all(Colors.black),
          elevation: MaterialStateProperty.all(0)
        ),
        onPressed: (){},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            icon,
            Text('$buttonText')
          ],
        ),
      ),
    );
  }
}
