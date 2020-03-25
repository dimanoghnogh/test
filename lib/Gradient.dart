import 'package:flutter/material.dart';



class RaisedGradientButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final Function onPressed;
  final String imageString;
  final double buttonWidth;
  
  

 RaisedGradientButton({
    Key key,
    @required this.child,
    this.gradient,
    this.onPressed,
    this.imageString,
    this.buttonWidth,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    String s=imageString;
    Color c;
    double bw=buttonWidth;
    
    if (s==null)
    {
      c=Colors.transparent;
      s='empty';

    }
    else
    {c=Colors.black;
    s=imageString;
    }

     if (bw==null)
    {
      bw=double.infinity;

    }
    else
    {
      bw=buttonWidth;
    }


    

    
    return Container(margin:  EdgeInsets.only(left: 20.0, right: 20.0),
                 
      
    
    child: 
        RaisedButton(
          onPressed: onPressed,
          padding:  EdgeInsets.all(0.0),
          
          child: Container(
            width: bw,
            
            decoration:  BoxDecoration(
              border: Border.all(color:Color.fromRGBO(168, 135, 52, 1), ),
              borderRadius:  BorderRadius.all( Radius.circular(4.0)),
              
              
              
              gradient: LinearGradient(colors: [
                      Color.fromRGBO(247, 223, 165, 1),
                      Color.fromRGBO(240, 193, 75, 1),
                    ],
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                  ),
            ),
            

            //space between image and button
            padding:  EdgeInsets.all(4.0),
            
            child: Row(
              children:[
                
                  Container(
                    alignment: Alignment.centerRight,
                width: 26,
                height: 26,
                decoration: BoxDecoration(color: c),
                child:Image(image:AssetImage('assets/$s.png'),),
                ),
               Expanded(child:
               Container
               (padding: EdgeInsets.only(right: 26.0),
               alignment: Alignment.center ,
                    child:child),),
                

                
              
              ],
            )
          ),
          
        ),
    );
  }
}