import 'package:flutter/material.dart';
import 'HomePage.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  GlobalKey<FormState> _key = new GlobalKey();
  String name, email, password, phoneno, collagename;  
  //auto validate is initally off, we will check accounding to filling or not one by one, if not fill any off them then we will activate below
  bool _autovalidate=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _key,
          child: Card(
            
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(40.0)),
                Image(
                  width: 100.0,
                  height: 100.0,
                  image: AssetImage("images/logo.png"),                          
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: TextFormField(
                    validator: (input) {
                      if(input.isEmpty){
                        return "Enter Name";
                      }
                    },
                    decoration: InputDecoration(
                      labelText: "Name",
                    ),
                    onSaved: (input) => name = input,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: TextFormField(
                    validator: (input){
                      if(input.isEmpty){
                        return "Enter Email";
                      }
                    },
                    decoration: InputDecoration(
                      labelText: "Email"
                    ),
                    onSaved: (input) => email=input,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.verified_user),
                  title: TextFormField(
                    validator: (input) {
                      if(input.isEmpty){
                        return "Enter Password";
                      }
                    },
                    decoration: InputDecoration(
                      labelText: "Password",
                    ),
                    onSaved: (input) => password = input,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: TextFormField(
                    validator: (input) {
                      if(input.isEmpty){
                        return "Enter PhoneNo.";
                      }
                    },
                    decoration: InputDecoration(
                      labelText: "Phone No.",
                    ),
                    onSaved: (input) =>  phoneno= input,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.school),
                  title: TextFormField(
                    validator: (input) {
                      if(input.isEmpty){
                        return "Enter Collage Name";
                      }
                    },
                    decoration: InputDecoration(
                      labelText: "Collage Name",
                    ),
                    onSaved: (input) => collagename = input,
                  ),
                ),
                Padding(padding: EdgeInsets.all(20.0)),
                ButtonTheme(
                  height: 40.0,
                  minWidth: 150.0,
                  child: RaisedButton(
                    onPressed: _onsubmitform,
                    color: Colors.red,
                    child: Text("Sign Up",
                      style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(20.0)),
              ],
            ),
          ),
        ),
      ),
    );
  }
  _onsubmitform(){
    if(_key.currentState.validate()){
      //save the key
      _key.currentState.save();
      //routing the saved key
      Navigator.push(context,
        MaterialPageRoute(
          builder: (context) => HomePage(
            name:name,
            email:email,
            password:password,
            phoneno:phoneno,
            collagename:collagename,
          )
        )
      );
    }
    else{
      setState(() {
        //all autovalidation is activated and checked that u filled the form or not , if u do not fill anything
        _autovalidate= true;
      });
    }
  }
}