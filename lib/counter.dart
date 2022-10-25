import 'package:flutter/material.dart';
import 'package:my_car/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Counter_screen extends StatefulWidget {
  @override
  State<Counter_screen> createState() => _Counter_screenState();
}
class _Counter_screenState extends State<Counter_screen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter',
        ),

      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              setState(() {
                ObjectName.setInt('counter', counter-1);
                counter--;
                print(counter);

              });

            },
              child: Text(
                'MINUS',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,

              ),
              child: Text(
                '$counter',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextButton(onPressed: (){
              setState(() {
                ObjectName.setInt('counter', counter+1);
                counter++;
                print(counter);
              });

            },
              child: Text(
                'PLUS',
              ),
            ),
          ],
        ),
      ),


    );
  }
}
