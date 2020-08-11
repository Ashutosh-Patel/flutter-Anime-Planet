import 'package:flutter/material.dart';
import '../constants.dart';
import 'HomePage.dart';
import './data.dart';

class Popular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
              children: popularAnime
                  .map((e) => animeTile(e.position, e.name, e.iconImage))
                  .toList()),
        ),
      ),
    );
  }
}

Widget animeTile(int idx, String name, String iconImage) {
  return Container(
      // decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(12.0),
      //     border: Border.all(color: btnBorder)),
      height: 120.0,
      child: Card(
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          elevation: 8.0,
          shadowColor: mainColor,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 8.0,
              ),
              CircleAvatar(
                radius: 18.0,
                backgroundColor: btnBorder,
                child: CircleAvatar(
                  radius: 16.0,
                  backgroundColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 2.0, bottom: 0.0),
                    child: Text(
                      idx.toString(),
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 8.0,
              ),
              Container(
                height: 100.0,
                width: 80.0,
                decoration: BoxDecoration(
                  border: Border.all(color: btnBorder, width: 2.0),
                  borderRadius: BorderRadius.circular(12.0),
                  image: DecorationImage(
                      image: AssetImage(iconImage), fit: BoxFit.fill),
                ),
              ),
              SizedBox(
                width: 8.0,
              ),
              Container(
                height: 100.0,
                width: 160.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(name,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500)),
                    Text("T.V. 24 eps",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w200)),
                    Expanded(
                      child: Text("Genres: Action, Drama, Shounen",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w200)),
                    )
                  ],
                ),
              ),
              Container(
                height: 100.0,
                width: 60.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      Icons.favorite,
                      color: Colors.redAccent,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text(" :  8.75")
                      ],
                    )
                  ],
                ),
              )
            ],
          )));
}
