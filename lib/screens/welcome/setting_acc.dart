import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        title: Text(
          "Fitur",
          style: TextStyle(
              fontSize: size.height * 0.04,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ),
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/icons/drawer.png"),
              fit: BoxFit.scaleDown,
              alignment: Alignment.bottomRight
            )
          ),
        ),
        ListView(
        children: [
          Column(
            children: [
                  SizedBox(height: size.height * 0.01,),
              GFListTile(
                avatar:Icon(Icons.bookmark_add, size: size.height * 0.04,),
                title: Container(
                  padding:  EdgeInsets.only( left: size.height * 0.04),
                  child: Text(
                  "Bookmarks",
                  style: TextStyle(
                    fontSize: size.height * 0.022,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                ),
                icon: Icon(Icons.arrow_forward_ios)
              ),
              GFListTile(
                avatar:Icon(Icons.history, size: size.height * 0.04,),
                title: Container(
                  padding:  EdgeInsets.only( left: size.height * 0.04),
                  child: Text(
                  "Latest Read",
                  style: TextStyle(
                    fontSize: size.height * 0.022,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                ),
                icon: Icon(Icons.arrow_forward_ios)
              ),
              Row(
              mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only( left: size.height * 0.03),
                    child: Text("__________________________________________________",style: TextStyle(
                          fontSize: size.height * 0.022,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey
                        ),),
                  ),
                ],
              ),
              GFListTile(
                avatar:Icon(Icons.share, size: size.height * 0.04,),
                title: Container(
                  padding:  EdgeInsets.only( left: size.height * 0.04),
                  child: Text(
                  "Bagikan Ke Teman",
                  style: TextStyle(
                    fontSize: size.height * 0.022,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                ),
              ),
              GFListTile(
                avatar:Icon(Icons.contact_support_rounded, size: size.height * 0.04,),
                title: Container(
                  padding:  EdgeInsets.only( left: size.height * 0.04),
                  child: Text(
                  "Panduan Dan Tentang Aplikasi",
                  style: TextStyle(
                    fontSize: size.height * 0.022,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                ),
              ),
            ],
          )
        ],
      ),
      ],)
    );
  }
}
