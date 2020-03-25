import 'package:flutter/material.dart';
class DropdownButtonClass extends StatefulWidget {
  
  
  const DropdownButtonClass({
    Key key,
    
  }) : super(key: key);

 

  _DropdownButtonClassState createState() => _DropdownButtonClassState();
}

class _DropdownButtonClassState extends State<DropdownButtonClass> {
 
  String dropdownValue = 'AE +971';
  @override
  Widget build(BuildContext context) {
    
    return
    Container(
      height: 34.0,
      
  padding:  EdgeInsets.only(left: 20.0),
  decoration: new BoxDecoration(
    
    border: Border.all(color:Color.fromRGBO(146, 149, 155, 1),),
    borderRadius: const BorderRadius.all(const Radius.circular(4.0)),
    gradient: new LinearGradient(
       colors: [
         Color.fromRGBO(247, 248, 250, 1),
         Color.fromRGBO(231, 233, 236, 1),
         ],
         begin: FractionalOffset.topCenter,
         end: FractionalOffset.bottomCenter,
         ),
         ),
        
         child:DropdownButton<String>(
           underline: Container (),
           value: dropdownValue,
           onChanged: (String newValue) {
             setState(() {
               dropdownValue = newValue;
               });
               },
               items: <String>['AE +971','SYR +963']
               .map<DropdownMenuItem<String>>((String value) {
                 return DropdownMenuItem<String>(
                   value: value,
                   child: Text(value),
                   );
                   }).toList(),
                   ),
                   )
    ;
  }
}