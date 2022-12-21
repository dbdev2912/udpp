import 'package:flutter/material.dart';

class NavigationItem extends StatelessWidget{
  const NavigationItem({ Key? key, this.icon, this.label, this.action }):super(key: key);
  final icon;
  final label;
  final action;

  @override
  Widget build(BuildContext context){
    final style = TextStyle(color: Color.fromRGBO(255,255,255, 1), fontSize: 16.0);
    return Scaffold(
      body: InkWell(
        onTap: (){
          /* Action gonna be here */

        },
        child:Row(
          children: <Widget>[
            Container(
                margin: EdgeInsets.all(8.0),
                child:  Icon( icon , color: Colors.white)
            ),
            Expanded(
                child: Container(
                    margin: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                        border: Border( bottom: BorderSide( color: Color.fromRGBO(255,255,255,0.25), ) )
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Container(
                                padding: EdgeInsets.all(4.0),
                                child: Text(label, style: style)
                            )
                        ),
                        Icon(Icons.navigate_next, color: Color.fromRGBO(255,255,255,0.5) )
                      ],
                    )
                )

            )
          ],
        ),
      )
    );
  }
}