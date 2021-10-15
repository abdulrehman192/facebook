
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
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: 100,
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
                        margin: EdgeInsets.only(left: 12.0),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(25.0)

                        ),
                      )
                    ],
                  ),
                  Divider(),
                  Row(
                    children: <Widget>[],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
