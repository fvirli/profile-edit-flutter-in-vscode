import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:t1_pm2_firli/custom/custom_button.dart';
import 'package:t1_pm2_firli/pages/profile.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      body: Container(
        padding: EdgeInsets.only(
          top: 64,
          bottom: 64,
          left: 24,
          right: 24,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Center(
                child: Text(
                  'EDIT PROFILE',
                  style: TextStyle(fontSize: 40, color: Colors.blueAccent),
                ),
              ),
            ),
            Container(
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Your Name',
                ),
              ),
            ),
            CustomButton(
              text: 'Custom Button',
              onPressed: () {
                print('Custom Button Clicked');
              },
            ),
            Container(
              height: 100,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                onPressed: () {
                  if (nameController.text == '') {
                    showAlertDialogCupertino(context, 'Please input your name');
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Profile(name: nameController.text),
                      ),
                    );
                  }
                },
                child: Text(
                  'Update',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showToast(String text) {
    Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black.withOpacity(0.5),
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  void showAlertDialogCupertino(BuildContext context, String text) {
    showDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text('Info'),
        content: Text(text),
        actions: [
          CupertinoDialogAction(
            child: Text('No'),
            onPressed: () {
              Navigator.pop(context);
              print('Clicked No!');
            },
          ),
          CupertinoDialogAction(
            child: Text('Yes'),
            onPressed: () {
              print('Clicked Yes!');
              Navigator.pop(context);
            },
          ),
        ],
      ),
      barrierColor: Colors.redAccent.withOpacity(0.5),
      barrierDismissible: false,
    );
  }
}
