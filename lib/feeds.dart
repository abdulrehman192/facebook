
import 'package:flutter/material.dart';

class Feeds extends StatefulWidget {
  const Feeds({Key? key}) : super(key: key);

  @override
  _FeedsState createState() => _FeedsState();
}

class _FeedsState extends State<Feeds>
{
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
            SizedBox(height: 8,),
            post(),
            post(),
          ],
        ),
      ),
    );
  }

  postList()
  {
    return ListView.builder(
        itemCount: 200,
        itemBuilder: (context, index)
    {
      return post();
    }
    );
  }

  Widget post()
  {
    return Container(
      margin: EdgeInsets.only(bottom: 8.0),
      width: MediaQuery.of(context).size.width,
      // height: 500,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(),
            title: Text('Username',style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Row(
              children: <Widget>[
                Text('7m'),
                SizedBox(width: 3.0,),
                Icon(Icons.public,size: 15.0,)
              ],
            ),
            trailing: IconButton(
              onPressed: (){},
              icon: Icon(Icons.more_horiz),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text('Post caption text goes here \n Hello how are you'),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(vertical: 3.0),
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/2.jpg'),
                fit: BoxFit.fill
              )
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.thumb_up,color: Colors.blue,),
                      Icon(Icons.emoji_emotions,color: Colors.yellow,),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Text('30 Comments'),
                      Text('15 Shares')
                    ],
                  ),
                ),

              ],
            ),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              postButton(
                icon: Icon(Icons.thumb_up_outlined),
                buttonText: 'Like'
              ),
              postButton(
                  icon: Icon(Icons.mode_comment_outlined),
                  buttonText: 'Comment'
              ),
              postButton(
                  icon: Icon(Icons.share),
                  buttonText: 'Share'
              ),
            ],
          )
        ],
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
                        color: Colors.blue,

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
