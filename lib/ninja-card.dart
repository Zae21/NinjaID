import 'package:flutter/material.dart';

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjalevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjalevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],

      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/thumb.jpg'),
                radius:30.0,
              ),
            ),
            Divider(
              height:30.0,
              color: Colors.grey[500]
            ),
            Text('NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0
              )
            ),
            SizedBox(height: 5.0),
            Text('Jet Lee',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              )
            ),
            SizedBox(height: 15.0),
            Text('CURRENT NINJA LEVEL',
                style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0
                )
            ),
            SizedBox(height: 5.0),
            Text('$ninjalevel',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                )
            ),
            SizedBox(height: 15.0),
            Row(
              children: <Widget>[
                Icon( Icons.email,
                  color: Colors.grey[200]
                ),
                SizedBox(width: 10),
                Text('jetlee@thenetninja.com',
                  style: TextStyle(
                    color: Colors.grey[200],
                    fontSize: 18.0,
                    letterSpacing: 1.5,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}