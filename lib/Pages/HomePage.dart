import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './data.dart';
import './popular.dart';
import '../constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // List<WatchList> watchlist;
  // final CategoriesScroller categoriesScroller = CategoriesScroller();

  ScrollController _scrollViewController;
  @override
  void initState() {
    super.initState();
    _scrollViewController = ScrollController();
  }

  @override
  void dispose() {
    _scrollViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: myAppBar(),
            body: Container(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 15.0,
                      ),
                      categoryLabel("Search By Popularity"),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 15.0),
                        child: Container(
                          width: width,
                          height: 45,
                          child: ListView(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            children: <Widget>[
                              FlatButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Popular()));
                                  },
                                  color: btnBack,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(12.0)),
                                  child: Text(
                                    "Polpular Anime",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  )),
                              SizedBox(
                                width: 10.0,
                              ),
                              FlatButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Popular()));
                                  },
                                  color: btnBack,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(12.0)),
                                  child: Text("Most Watched",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600))),
                              SizedBox(
                                width: 10.0,
                              ),
                              FlatButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Popular()));
                                  },
                                  color: btnBack,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(12.0)),
                                  child: Text("Top Rated",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600))),
                              SizedBox(
                                width: 10.0,
                              ),
                              FlatButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Popular()));
                                  },
                                  color: btnBack,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(12.0)),
                                  child: Text("Recently Updated",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600))),
                            ],
                          ),
                        ),
                      ),
                      categoryLabel("Search By Genres"),
                      SizedBox(
                        height: 8.0,
                      ),
                      genreLabel("Comedy"),
                      Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Container(
                            width: width,
                            height: 200,
                            child: ListView(
                                physics: BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                children: comedyAnime
                                    .map((e) => animeCard(e.name, e.iconImage))
                                    .toList()),
                          )),
                      genreLabel("Action"),
                      Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Container(
                            width: width,
                            height: 200,
                            child: ListView(
                                physics: BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                children: actionAnime
                                    .map((e) => animeCard(e.name, e.iconImage))
                                    .toList()),
                          )),
                      genreLabel("Adventure"),
                      Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Container(
                            width: width,
                            height: 200,
                            child: ListView(
                                physics: BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                children: adventureAnime
                                    .map((e) => animeCard(e.name, e.iconImage))
                                    .toList()),
                          )),
                      genreLabel("Drama"),
                      Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Container(
                            width: width,
                            height: 200,
                            child: ListView(
                                physics: BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                children: dramaAnime
                                    .map((e) => animeCard(e.name, e.iconImage))
                                    .toList()),
                          ))
                    ],
                  ),
                ),
              ),
            )));
  }
}

Widget myAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 8.0,
    leading: Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Image.asset('assets/images/MainLogo.png'),
    ),
    title: Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Text(
        "Anime Planet",
        style: TextStyle(
            color: Colors.black,
            fontFamily: 'Pristina',
            fontSize: 28.0,
            fontWeight: FontWeight.w500),
      ),
    ),
    actions: <Widget>[
      IconButton(
          icon: Image.asset('assets/images/search_icon.png'), onPressed: () {}),
      IconButton(
          icon: Image.asset('assets/images/settings_icon.png'),
          onPressed: () {}),
      IconButton(
          icon: Image.asset('assets/images/options_icon.png'), onPressed: () {})
    ],
  );
}

Widget categoryLabel(String label) {
  return Container(
    decoration: BoxDecoration(
        border: Border.all(
          color: btnBorder,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(12.0)),
    child: Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Text(
        label,
        style: TextStyle(
            fontFamily: 'Palanquin',
            fontSize: 14,
            color: btnBorder,
            fontWeight: FontWeight.w500),
      ),
    ),
  );
}

Widget genreLabel(String label) {
  return Container(
      margin: EdgeInsets.only(top: 8.0),
      height: 35,
      decoration: BoxDecoration(
          color: btnBack2, borderRadius: BorderRadius.circular(10.0)),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 8.0,
          ),
          Icon(Icons.label_important),
          Text(
            label,
            style: TextStyle(
                fontFamily: 'Palanquin',
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w800),
          ),
        ],
      ));
}

Widget animeCard(String name, String imgName) {
  return Container(
    height: 200,
    width: 140,
    color: Colors.white,
    child: Column(
      children: <Widget>[
        Container(
          // margin: EdgeInsets.only(top: 5.0),
          height: 150, width: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(color: btnBorder, width: 2.0),
              image: DecorationImage(
                  image: AssetImage(imgName), fit: BoxFit.contain)),
        ),
        SizedBox(
          height: 8.0,
        ),
        Container(
          padding: EdgeInsets.only(left: 5.0, right: 5.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(color: btnBorder, width: 2.0),
          ),
          child: Text(
            name,
            style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w700),
          ),
        )
      ],
    ),
  );
}
