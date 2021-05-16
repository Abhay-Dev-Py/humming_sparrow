import 'package:flutter/material.dart';
import 'package:humming_sparrow_test/HomePage.dart';
import 'package:humming_sparrow_test/profile.dart';

class Video extends StatefulWidget {
  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {

  Widget news(String imageValue) {
    return(
        Container(
          child: ListTile(
            isThreeLine: false,
            leading: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  child: Image.network(imageValue),
                ),
              ),
            ),
            title: Text(
              'This is heading of the realte new ws this is and go on',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),

            ),

            subtitle: Column(
              children: [

                Container(

                  child: Row(
                    children: [
                      Container(

                        child: Icon(Icons.calendar_today_outlined,color: Colors.grey[400],),
                      ),
                      SizedBox(width: 8,),
                      Text('03-03-2021',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey[400]),),
                      SizedBox(width: 8,),
                      Container(
                        height: 25,
                        width: 80,
                        color: Colors.deepOrange,
                        child: Center(child: Text('Info',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),),
                      ),
                      SizedBox(width: 8,)

                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Video Page'),
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
              Container(
                width: MediaQuery.of(context).size.width*0.2,

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
        body:SingleChildScrollView(
          child: Container(
              child: Container(
                  child: Column(
                      children:<Widget>[
                        Column(
                            children:<Widget>[
                              Container(

// height:40,
                                width: MediaQuery.of(context).size.width,
                                decoration:BoxDecoration(


                                ) ,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Center(
                                      child: Text('Videos',
                                        style: TextStyle(color: Colors.black,fontSize: 17),
                                      )
                                  ),
                                ),
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:180,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/video_image.jpeg'),
                                      fit: BoxFit.fill,
                                    ),
                                  )
                              ),
                            ]),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5,0,5, 0),
                          child: Column(
                              children:<Widget>[
                                  Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration:BoxDecoration(
                                    color: Colors.white,

                                  ) ,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('This is heading of realted  new ws this is another ',
                                      style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: (FontWeight.w500)),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration:BoxDecoration(
                                    color: Colors.white,

                                  ) ,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Date\,Time',
                                      style: TextStyle(color: Colors.grey[400],fontSize: 14,fontWeight: (FontWeight.w300)),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration:BoxDecoration(
                                    color: Colors.white,

                                  ) ,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('this is something big and important  this is something big and important this is',
                                      style: TextStyle(color: Colors.grey[400],fontSize: 14,fontWeight: (FontWeight.w300)),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 7,),


                                Card(
                                  color: Colors.grey[100],
                                  shadowColor: Colors.grey[100],
                                  child: FlatButton(
                                    child: Center(
                                      child: Container(

                                        child:Text('Information',style:TextStyle(color: Colors.black)),
                                      ),

                                    ),
                                    onPressed: (){
                                      print('button pressed');
                                    },
                                  ),
                                ),
                                SizedBox(height:5),
                                Container(
                                  child:news('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTcNHdT7IpKwcAgQ0Deu44Aq7ofsi1Cbk50w&usqp=CAU'),
                                ),
                                SizedBox(height: 15,),
                                Container(
                                  child:news('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTcNHdT7IpKwcAgQ0Deu44Aq7ofsi1Cbk50w&usqp=CAU'),
                                ),
                                SizedBox(height: 15,),
                                Container(
                                  child:news('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTcNHdT7IpKwcAgQ0Deu44Aq7ofsi1Cbk50w&usqp=CAU'),
                                )
                              ]
                          ),
                        )
                      ]
                  )

              )
          ),
        )
    );
  }
}
