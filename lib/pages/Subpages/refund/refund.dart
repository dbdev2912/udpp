import 'package:flutter/material.dart';
import 'package:udpp/pages/Subpages/refund/refund-history.dart';
import 'package:udpp/pages/Subpages/refund/refund/refundform.dart';

class RefundPage extends StatelessWidget{
  @override
  Widget build( BuildContext  context){
    final title = TextStyle(fontSize: 16.0, color: Colors.white);
    final content = TextStyle(fontSize: 12.0, color: Colors.white38);
    final decor = BoxDecoration(
        border: Border( bottom: BorderSide( width: 2.0, color: Colors.white10 ) )
    );
    return Scaffold(
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromRGBO(32, 34, 53, 1),
          ),
          child: Container(
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push( MaterialPageRoute( builder: (context) => RefundForm() ) );
                    },
                    child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(48.0),
                        decoration: decor,
                        child: Column(
                          children: <Widget>[
                            Text("BẮT ĐẦU TRẢ HÀNG", style: title),
                          ],
                        )
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push( MaterialPageRoute( builder: (context) => RefundHistory() ) );
                    },
                    child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(48.0),
                        decoration: decor,
                        child: Column(
                          children: <Widget>[
                            Text("LỊCH SỬ TRẢ HÀNG", style: title),
                          ],
                        )
                    ),
                  ),

                ],
              )
          )
      ),
    );
  }
}