import 'package:flutter/material.dart';
import 'Gradient.dart';
import 'DropDown.dart';
import 'rout.dart';

import 'package:maidb/services/test-s.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
      loadingProgress() {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircularProgressIndicator(
              valueColor: new AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ],
        ),
      ),
      color: Color.fromARGB(255, 40, 51, 140),
    );
  }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(66, 103, 178, 1),
        title: Container( width: 100.0,
        child: Image ( image: AssetImage('assets/Maids-cc.png'),  
           
        ), ) 
      ),
      body:
      FutureBuilder(
        future: Services.demo(),
        builder: (context, snapShot) {
          if (snapShot.connectionState == ConnectionState.done) {
            return Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Text("The User information ID is : " +
                          Services.userInformation.data.id.toString()),
                    ),
                    Text("The User information Email is : " +
                        Services.userInformation.data.email),
                    
                  ],
                ),
              ),
            );
          } else {
            return loadingProgress();
          }
        },
      ),
      
      /*
      Column(
       children:  [
         Container(  margin: const EdgeInsets.only(left: 20.0, right: 20.0),alignment :AlignmentDirectional.centerStart,child :Text('Enter your phone number' ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),),
         
            Container(  margin: const EdgeInsets.only(left: 20.0, right: 20.0)
            
            , child:
            Row( children:[ 
             

               
              
              Expanded(child:
              Container( margin: const EdgeInsets.only(left: 20.0,top: 22.0),height: 68, child:
              TextFormField(textAlign: TextAlign.left,maxLength: 9,decoration: InputDecoration(border: OutlineInputBorder(),hintText: 'Mobile number'),),
               ),),
               ] ,
              
              
         ),),
         RaisedGradientButton(child: Text('Cancel'),buttonWidth: 150.0,imageString: 'communication', onPressed: (){
           Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );




         }),
         DropdownButtonClass(),
         


       ],
        
      ),*/
      
      
    );
  }
       
    



}
