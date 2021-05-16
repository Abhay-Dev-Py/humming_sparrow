import 'package:flutter/material.dart';
import 'package:humming_sparrow_test/profile.dart';
import 'package:humming_sparrow_test/utils.dart';
import 'package:humming_sparrow_test/video.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Container tile()
  {
    return Container(
      child: ListTile(
        isThreeLine: false,
        leading: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Container(
              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTcNHdT7IpKwcAgQ0Deu44Aq7ofsi1Cbk50w&usqp=CAU'),
            ),
          ),
        ),
        title: Text(
          'This is heading of the realte new ws this is and go on',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Column(
          children: [
            Text('This is Heading of the realte new ws this is another Heading of the this will go like this when nothing'),
            Container(
              child: Row(
                children: [
                  Container(

                    child: Icon(Icons.calendar_today_outlined),
                  ),
                  SizedBox(width: 8,),
                  Text('03-03-2021',style: TextStyle(fontWeight: FontWeight.w400),),
                  SizedBox(width: 8,),
                  Container(
                    height: 25,
                    width: 100,
                    color: Colors.deepOrange,
                    child: Center(child: Text('Sports',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),),
                  ),
                  SizedBox(width: 8,),
                  Icon(Icons.bookmark_border_sharp)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  Utils utils;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home Page'),
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
            Container(width: MediaQuery.of(context).size.width*0.2,

              child: ListTile(
              title: Text('Home'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),),
            Divider(thickness: 1,),
            SizedBox(height: 10,),
            Container(width: MediaQuery.of(context).size.width*0.2,

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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            tile(),
            SizedBox(height: 5,),
            tile(),
            SizedBox(height: 5,),
            tile(),
            SizedBox(height: 5,),
            tile(),
            SizedBox(height: 5,),
            tile(),
            SizedBox(height: 5,),

          ],
        ),
      ),
    );
  }
}
