import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //can't be change so deifne final
  final String name, email, password, phoneno, collagename;
  //assigning the values from construtor to var
  HomePage({
    Key key,
    @required
    this.name,
    this.email,
    this.password,
    this.phoneno,
    this.collagename,
  }
  ):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(40.0),),
              Image(
                width: 150.0,
                height: 150.0,
                image: AssetImage("images/logo.png"),
              ),
              Padding(padding: EdgeInsets.all(20.0),),
              ListTile(
                leading: Icon(Icons.person_pin,color: Colors.orange,size: 40.0,),
                title: Text("Name",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w400,color: Colors.orange),),
                subtitle: Text(name,style:TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black54)),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.email,color: Colors.orange,size: 30.0,),
                title: Text("Email",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w400,color: Colors.orange),),
                subtitle: Text(email,style:TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black54)),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.import_contacts,color: Colors.orange,size: 30.0,),
                title: Text("Password",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w400,color: Colors.orange),),
                subtitle: Text(password,style:TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black54)),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.phone,color: Colors.orange,size: 30.0,),
                title: Text("Phone no.",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w400,color: Colors.orange),),
                subtitle: Text(phoneno,style:TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black54)),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.school,color: Colors.orange,size: 30.0,),
                title: Text("Collage Name",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w400,color: Colors.orange),),
                subtitle: Text(collagename,style:TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black54)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}