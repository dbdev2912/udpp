import 'package:flutter/material.dart';

class Account extends StatefulWidget{
  const Account({ Key? key }):super(key:key);
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account>{

  final content = TextStyle(fontSize: 14.0, color: Colors.white);
  final title = TextStyle(fontSize: 12.0, color: Colors.white);
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
                              "TÀI KHOẢN",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            )
                        ),
                        Container(
                            child: Container(
                                margin: EdgeInsets.all(8.0),
                                child: Icon(Icons.arrow_back_ios, color: Colors.transparent)
                            )
                        ),
                      ],
                    )
                ),

                Container(
                    width: 125, height: 125,
                    margin: EdgeInsets.all(36),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('/images/avatar.jpg'),
                    )
                ),

                Expanded(

                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(12.0),
                              child: Icon(Icons.person_outline_rounded, size: 32, color: Colors.white),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: decor,
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: [
                                        Expanded(child: Text("Họ tên", style: title),)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(child: Text("Mìn Lèo Bliz", style: content),)
                                      ],
                                    ),

                                  ],
                                )
                              ),
                            )
                          ],
                        ),

                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(12.0),
                              child:  Icon(Icons.phone_outlined, size: 32, color: Colors.white),
                            ),
                            Expanded(
                              child: Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: decor,
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: [
                                          Expanded(child: Text("Số điện thoại", style: title),)
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Expanded(child: Text("0368474601", style: content),)
                                        ],
                                      ),

                                    ],
                                  )
                              ),
                            )
                          ],
                        ),

                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(12.0),
                              child:  Icon(Icons.mail_outline_rounded, size: 32, color: Colors.white),
                            ),
                            Expanded(
                              child: Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: decor,
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: [
                                          Expanded(child: Text("Email", style: title),)
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Expanded(child: Text("minleo.riot@riotgame.com", style: content))
                                        ],
                                      ),

                                    ],
                                  )
                              ),
                            )
                          ],
                        ),

                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(12.0),
                              child:  Icon(Icons.home_outlined, size: 32, color: Colors.white),
                            ),
                            Expanded(
                              child: Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: decor,
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: [
                                          Expanded(child: Text("Địa chỉ", style: title),)
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Expanded(child: Text("No. NULL, No Where Town, Texas, America", style: content))
                                        ],
                                      ),

                                    ],
                                  )
                              ),
                            )
                          ],
                        ),
                      ],
                    )

                ),

              ],
            )
        )
    );
  }
}