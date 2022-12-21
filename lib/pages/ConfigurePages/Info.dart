import 'package:flutter/material.dart';

class Info extends StatefulWidget{
  const Info({ Key? key }):super(key:key);
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info>{
  final title = TextStyle(fontSize: 14.0, color: Colors.white);
  final content = TextStyle(fontSize: 14.0, color: Colors.white54);
  final decor = BoxDecoration(
      border: Border( bottom: BorderSide( width: 2.0, color: Colors.white10 ) )
  );
  @override
  Widget build( BuildContext context ){
    return Scaffold(
        body: SafeArea(
            child: Column(
              children: <Widget>[
                Container(

                    padding: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(32, 34, 53, 1),
                    ),
                    child: Row(
                      children: <Widget>[
                        Container(
                            child: InkWell(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Container(
                                  margin: EdgeInsets.all(8.0),
                                  child: Icon(Icons.arrow_back_ios, color: Colors.white)
                              ),
                            )
                        ),
                        Expanded(
                            child: Text(
                              "THÔNG TIN",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            )
                        ),
                      ],
                    )
                ),

                Expanded(
                    child: Container(
                        width: double.infinity,
                        margin: EdgeInsets.all(12.0),

                        child: Column(
                          children: <Widget>[
                            Container(
                              decoration: decor,
                              padding: EdgeInsets.all(12.0),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: 150.0,
                                    child: Text("Ứng dụng", style: title),
                                  ),
                                  Expanded(
                                      child: Text("DCM Agent", style: content)
                                  )
                                ],
                              ),
                            ),
                            Container(
                              // decoration: decor,
                              padding: EdgeInsets.all(12.0),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: 150.0,
                                    child: Text("Phiên bản", style: title),
                                  ),
                                  Expanded(
                                      child: Text("1.0.0", style: content)
                                  )
                                ],
                              )
                            )

                          ]
                        )

                    )
                )


              ],
            )
        )
    );
  }
}