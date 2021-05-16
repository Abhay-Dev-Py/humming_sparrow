import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:humming_sparrow_test/utils.dart';
import 'package:humming_sparrow_test/video.dart';

import 'HomePage.dart';
class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile>
{
  ListTile formTile(String title,String subtitle)
  {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.w200),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
  Widget build(BuildContext context)
  {
    Utils utils;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile Page'),
        backgroundColor: Colors.grey[900],
        bottomOpacity: 0,
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              color: Colors.black,
              child: DrawerHeader(
                child: null,

              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width*0.2,

              child: ListTile(
              title: Text('Home'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),),
            Divider(thickness: 1,),
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width*0.2,

              child: ListTile(
              title: Text('Video'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Video()));
              },
            ),),
            Divider(thickness: 1,),
            SizedBox(height: 10,),
            Container(width: MediaQuery.of(context).size.width*0.2,

              child: ListTile(
              title: Text('Profile'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
              },
            ),),
            Divider(thickness: 1,),
          ],
        ),


      ),
      body: SingleChildScrollView(
        child: Container(

          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.4,
                color: Colors.grey[200],
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10,0),
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.all(10),
                          child: CircleAvatar(
                            backgroundColor: Colors.deepOrange,
                            radius: 80,
                            child: CircleAvatar(radius:76,child: Image.network('https://www.freeiconspng.com/thumbs/person-icon-blue/person-icon-blue-18.png')),

                          ),
                        ),
                        SizedBox(height: 5,),
                        Text('Dinesh yaduvanshi',style: TextStyle(color: Colors.redAccent,fontSize: 20,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Container(
                          color: Colors.white,
                          width: 120,
                          height: 30,
                          child: RaisedButton(
                            onPressed: (){print('do Nothing');},

                            child: Text('Edit Profile',style: TextStyle(color: Colors.deepOrange),),),
                        )

                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    formTile('Location', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
                    SizedBox(height: 5,),
                    Divider(height: 8, thickness: 2,),
                    formTile('Pincode', 'xxxxxx'),
                    SizedBox(height: 5,),
                    Divider(height: 8, thickness: 2,),
                    formTile('Date of Birth', 'dd-mm-yyyy'),
                    SizedBox(height: 5,),
                    Divider(height: 8, thickness: 2,),
                    formTile('Gender', 'Male'),
                    SizedBox(height: 5,),
                    Divider(height: 8, thickness: 2,),
                    formTile('Whatsapp', '+91 - xxxxxxxxxx'),
                    SizedBox(height: 5,),
                    Divider(height: 8, thickness: 2,),
                    formTile('Email', 'xxxxxxxxx@gmail.com'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}