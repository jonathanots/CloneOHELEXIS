import 'package:clone_olx/components/floatButton.dart';
import 'package:clone_olx/components/listAd.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:clone_olx/components/tab.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6e0ad6),
        leading: IconButton(
            onPressed: (){},
            icon: Icon(FontAwesomeIcons.bars),
          ),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(FontAwesomeIcons.search),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(FontAwesomeIcons.heart),
          ),
          
        ],
      ),
      backgroundColor: Colors.grey[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TabBarr(),
          Expanded(
            child: Scrollbar(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 5),
                scrollDirection: Axis.vertical,
                physics: AlwaysScrollableScrollPhysics(),
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 25),
                    alignment: Alignment.centerLeft,
                    height: 60,
                    child: Text("Mais anúncios",
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 17
                      ),
                    ),
                  ),
                  ListAd()
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatButton(),
    );
  }
}