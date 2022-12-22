import 'package:flutter/material.dart';
import 'package:udpp/pages/Subpages/%20distribution/ofline/offlineform.dart';

class OfflineDistribution extends StatelessWidget{
  @override
  Widget build( BuildContext  context){
    final title = TextStyle(fontSize: 16.0, color: Colors.white);
    final decor = BoxDecoration(
        border: Border( bottom: BorderSide( width: 2.0, color: Colors.white10 ) )
    );
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
                          "PHÂN PHỐI OFFLINE",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )
                    ),
                    Container(
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (contexr) => OfflineForm()));
                          },
                          child: Container(
                              margin: EdgeInsets.all(8.0),
                              child: Icon(Icons.add_circle_outline_outlined, color: Colors.white)
                          ),
                        )
                    ),

                  ],
                )
            ),
            Expanded(
                child: Center(
                  child: Text("Chưa có đợt phân phối nào"),
                )
            ),
          ],
        ),
      )

    );
  }
}