import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  final String name;

  Profile({required this.name});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
            print('Back to previous page');
          },
        ),
        title: Text('Profile'),
        centerTitle: true,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 77,
                backgroundImage: NetworkImage('https://i.pinimg.com/1200x/bf/df/d9/bfdfd952626352197f86665dfd67a8d1.jpg',
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: Text(
                  widget.name, 
                  style: TextStyle( 
                  fontSize: 27,
                  )
                  ),
                )
            ]),
        ),
    );
  }
}