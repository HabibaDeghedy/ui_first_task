import 'package:flutter/material.dart';
import 'package:my_car/counter.dart';
import 'package:my_car/first_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';


late SharedPreferences ObjectName;
int counter = 0;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  ObjectName = await SharedPreferences.getInstance();
  if(ObjectName.getInt('counter')==null){
   counter ==0;
    counter=0;
  }
  else{
    counter= ObjectName.getInt('counter')!;
  }
  runApp(MyApp());



}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Counter_screen(),
    );
  }

}
