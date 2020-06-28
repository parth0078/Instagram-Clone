import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagramclone/model/home_screen_model.dart';

class InstagramHomeScreen extends StatefulWidget {
  @override
  _InstagramHomeScreenState createState() => _InstagramHomeScreenState();
}

class _InstagramHomeScreenState extends State<InstagramHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: 100,
            child: Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    textBaseline: TextBaseline.ideographic,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          SizedBox(
                            height: 8.0,
                          ),
                          CircleAvatar(
                            backgroundImage:
                                NetworkImage(homeScreenData[index].imageUrl),
                            radius: 30,
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            homeScreenData[index].name,
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 16.0,
                      )
                    ],
                  );
                },
                itemCount: homeScreenData.length,
              ),
            ),
          ),
          Divider(),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return Card(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                  "https://timesofindia.indiatimes.com/thumb/msid-72914267,width-800,height-600,resizemode-4/72914267.jpg?imglength=143142s"),
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              "Akshay Kumar",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.more_vert,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Image.network(
                      "https://timesofindia.indiatimes.com/thumb/msid-72914267,width-800,height-600,resizemode-4/72914267.jpg?imglength=143142",
                    ),
                    SizedBox(
                      height: 16.0,
                      width: 8.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            SizedBox(
                              width: 8.0,
                            ),
                            Icon(
                              Icons.favorite_border,
                              size: 30,
                              color: Colors.black54,
                            ),
                            SizedBox(
                              width: 16.0,
                            ),
                            Icon(
                              FontAwesomeIcons.comment,
                            ),
                            SizedBox(
                              width: 16.0,
                            ),
                            Icon(
                              FontAwesomeIcons.paperPlane,
                            )
                          ],
                        ),
                        Icon(
                          FontAwesomeIcons.bookmark,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          "3518 Likes",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 8.0,
                        ),
                        Expanded(
                          child: RichText(text: TextSpan(
                            text: "Akshay kumar  ",
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                            children: [
                              TextSpan(
                                text: "Hamari duniya 71% paani se bani hai lekin uss mein se sirf 2.5% hai fresh pani . yani",
                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal)
                              )
                            ]
                          )),
                        ),
                        SizedBox(
                          width: 4.0,
                        ),
                      
                      ],
                    ),
                  ],
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
