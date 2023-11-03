import 'package:flutter/material.dart';
import 'package:t1_pm2_firli/pages/edit_profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: EditProfile(),
    ); 
  }
} 