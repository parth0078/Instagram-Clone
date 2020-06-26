import 'package:flutter/material.dart';
import 'package:instagramclone/pages/InstagramHomeScreen.dart';
import 'package:instagramclone/pages/instagram_search_screen.dart';

class InstagramHome extends StatefulWidget {
  @override
  _InstagramHomeState createState() => _InstagramHomeState();
}

class _InstagramHomeState extends State<InstagramHome> {
  int _selectedItem = 0;
  List<Widget> allTabsContent = [
    InstagramHomeScreen(),
    InstagramSearchScreen(),
    InstagramSearchScreen(),
    InstagramSearchScreen(),
    InstagramSearchScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.network(
          "https://static.thenounproject.com/png/101388-200.png",
          cacheHeight: 30,
        ),
        title: Image.asset(
          "assets/instaLogo.png",
          cacheHeight: 35,
          cacheWidth: 120,
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(Icons.send),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(


        currentIndex: _selectedItem,
        onTap: (val) {
          setState(() {
            _selectedItem = val;
          });
          /*   print("PRINT : " + val.toString());
          if (val == 0) {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return InstagramHomeScreen()
            }));
          }*/
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Theme.of(context).accentColor,
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Theme.of(context).accentColor,
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_to_photos,
              color: Theme.of(context).accentColor,
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              color: Theme.of(context).accentColor,
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Theme.of(context).accentColor,
            ),
            title: Text(""),
          )
        ],
      ),
      body: allTabsContent[_selectedItem],
    );
  }
}
