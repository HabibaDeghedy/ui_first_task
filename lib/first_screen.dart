

import 'dart:ui';

import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {

  @override
  State<FirstScreen> createState()
  {
    return _FirstScreenState();
  }
}

class _FirstScreenState extends State<FirstScreen> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        title: Text(
          'My Car',
        ),
        elevation: 0,
        actions: [
          IconButton(onPressed: (){}, icon:Icon (
            Icons.notifications,
          ),),
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 20.0,
            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0sCAvrW1yFi0UYMgTZb113I0SwtW0dpby8Q&usqp=CAU'),
          ),
          SizedBox(
            height: 35,
          ),
        ],

      ),
      body:
      SingleChildScrollView(
        child: Stack(
          children:[
            Container(
              decoration: BoxDecoration(
                color: Colors.tealAccent,
              ),
            child: Column(
              children: [
                Text(
                  'Sufjan Stevens',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),

                ),
                Text(
                  'Mystery Of Love',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),

                ),
                IconButton(onPressed: (){}, icon:Icon (
                  Icons.pause_circle_filled_outlined,
                ),),

                Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                 IconButton(
                   onPressed: (){},
                   icon: Icon(Icons.skip_previous_outlined),
                 ),
                    SliderTheme(
                      data: SliderThemeData(
                        thumbColor: Colors.green[900],
                        activeTrackColor: Colors.green[900],
                      ),
                     child: Slider(value:120,
                        max: 180.0,
                        min: 80,
                        onChanged: (value){
                          print(value);
                        },
                      ),
                    ),
                   IconButton(onPressed: (){},
                     icon:Icon (Icons.skip_next_outlined),
                   ),

                  ],
                ),

                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: AlignmentDirectional.topCenter,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.vertical(top: Radius.circular(200)),
                    color:Color(0xFF292b30),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 30,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.grey[500],

                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Column(
                          children: [
                            Text(
                              'Your Car',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Sensor readings, Charging, Remote control ',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: Container(

                              child: CircleAvatar(
                                radius: 100,
                                backgroundColor: Colors.tealAccent,
                              ),
                            ),
                          ),

                          CircleAvatar(
                            radius: 80,
                            backgroundColor: Colors.grey[800],
                          ),
                          Column(
                            children: [

                              Image.network('https://cdn-icons-png.flaticon.com/128/5266/5266773.png',
                                width: 30,
                                height: 30,
                              ),
                              Text(
                                '300',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.white,

                                ),
                              ),
                              Text(
                                'Km',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),

                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey[800],
                              ),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Battery',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),

                                    ),
                                  ),
                                  Image.network('https://i.pinimg.com/originals/ec/18/dc/ec18dc320bd1c9598183eeb949aaa9a5.png')
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,

                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.grey[800],
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              'Current',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                                color: Colors.white,
                                              ),

                                            ),
                                          ),
                                          SizedBox(
                                            width: 40,
                                          ),
                                          Icon(Icons.info_outlined),
                                        ],
                                      ),
                                      Text(
                                        '24',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text('A',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),

                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),

                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.grey[800],
                                  ),

                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'Cable',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.white,
                                          ),

                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),

                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Locked',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                            ),

                                          ),
                                          SizedBox(
                                            width: 40,
                                          ),
                                          Switch(value: isSwitched ,
                                            onChanged:(value){
                                            setState(() {
                                              isSwitched = value;
                                            });
                                            } ,
                                        activeColor: Colors.tealAccent,
                                          ),

                                        ],
                                      ),
                                    ],

                                  ),
                                ),
                              ],


                            ),
                          ),

                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey[800],
                              ),

                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Oil Levels',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),

                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                Image(
                                    image: AssetImage('images/oilll.png'),
                                  height: 50,
                                  width: 50,
                                  color: Colors.tealAccent,
                                ),
                                  SizedBox(
                                    height: 70,
                                  ),



                                ],
                              ),
                            ),

                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey[800],
                              ),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Coolent',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Icon(Icons.ac_unit,
                                    size: 70,
                                    color: Colors.tealAccent,

                                  ),

                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    '87',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '%',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),

                                ],
                              ),
                            ),
                          ),

                        ],

                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[800],
                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Pad Wear',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: [
                                Text(
                                  '94',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '%',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                  ),
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                                Image(
                                  image: AssetImage('images/pad.png'),
                                  height: 200,
                                  width: 200,
                                  color: Colors.black,
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),


                    ],
                  ),

                ),

            ],

            ),

          ),
    ]
        ),
      ),





    );
  }
}
