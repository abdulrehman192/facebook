
import 'package:flutter/material.dart';

class Videos extends StatefulWidget {
  const Videos({Key? key}) : super(key: key);

  @override
  _VideosState createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            groupHeader(),
            SizedBox(height: 8.0,),
            post(),
            post(),
            post(),
          ],
        ),
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
      height: 150,
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
                    height: 130,
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

  Widget groupHeader()
  {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 130,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text('Watch',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),)
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Container(
                      margin: EdgeInsets.only(right: 3.0),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle
                      ),
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.person, color: Colors.black, size: 30,),

                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 3.0),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle
                      ),
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.search, color: Colors.black, size: 30,),

                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                height: 30,
                padding: EdgeInsets.symmetric(horizontal:10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.grey.shade400
                ),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.person),
                    SizedBox(width: 5,),
                    Text('For You')
                  ],
                ),
              ),
              Container(
                height: 30,
                padding: EdgeInsets.symmetric(horizontal:10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.grey.shade400
                ),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.group_sharp),
                    SizedBox(width: 5,),
                    Text('Your Groups')
                  ],
                ),
              ),
              Container(
                height: 30,
                padding: EdgeInsets.symmetric(horizontal:10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.grey.shade400
                ),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.my_location),
                    SizedBox(width: 5,),
                    Text('Discover')
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

