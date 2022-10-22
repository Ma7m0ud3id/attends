import 'package:attends/Screen/Admin/Admin_Screen.dart';
import 'package:attends/Screen/User/UserScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routName ='Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var Admincontroller = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
//crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              child: Text('Admin'),
              onPressed: () {
                CheckAdmin();
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 59, vertical: 20),
                  textStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          SizedBox(
            height:MediaQuery.of(context).size.height*0.02 ,
          ),
          Center(
            child: ElevatedButton(
              child: Text('Student'),
              onPressed: () {
                Navigator.pushNamed(context, 'advertiser');
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }

  CheckAdmin(){
    showDialog(
      //barrierDismissible: isCancelable,
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              // margin: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              height: MediaQuery.of(context).size.height * .25,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                  key: formKey,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormField(
                          controller: Admincontroller,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            labelText: 'Inter Code',
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                          validator: (text) {
                            if (text == null || text.trim().isEmpty) {
                              return 'Enter Inter Code please';
                            }
                          },
                        ),

                        ElevatedButton(
                            onPressed: () {
                               Recive();
                               if (Admincontroller.text=='12345'){
                                 Navigator.pop(context);
                                 Navigator.pushNamed(context, 'browser');
                               }
                               else{
                                 Navigator.pop(context);
                               }
                              Admincontroller.clear();
                              // ;



                            },
                            child: Text(
                              'Done',
                              style: TextStyle(color: Colors.black),
                            )),
                      ])),
            ),
          );
        });
  }
  void Recive() {
    if (formKey.currentState!.validate()) {

    }
    else {

    }



  }
}
/*if (formKey.currentState!.validate()) {
      if (Admincontroller.text=='12345'){
        Navigator.pushNamed(context, AdminScreen.routName);
        Navigator.pop(context);

      }
      else{
        Navigator.pop(context);
      }
      return true;
    }
    else {
      return false;
    }*/