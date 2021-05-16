import 'package:flutter/material.dart';
import 'package:humming_sparrow_test/HomePage.dart';
import 'package:humming_sparrow_test/profile.dart';

class Utils
{
  AppBar appBar(String heading)
  {
    print('hi1');
    return AppBar(
      centerTitle: true,
      title: Text(heading),
      backgroundColor: Colors.grey[900],
      bottomOpacity: 0,
      elevation: 0,
    );
  }
  Drawer drawer(BuildContext context)
  {
    return Drawer(
      child: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.black,
            child: DrawerHeader(
              child: null,

            ),
          ),
          SizedBox(height: 10,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListTile(
            title: Text('Home'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),),
          Divider(thickness: 1,),
          SizedBox(height: 10,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListTile(
            title: Text('Video'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),),
          Divider(thickness: 1,),
          SizedBox(height: 10,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListTile(
            title: Text('Profile'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
            },
          ),),
          Divider(thickness: 1,),
        ],
      ),


    );
  }

}