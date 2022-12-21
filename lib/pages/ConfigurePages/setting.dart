import 'package:flutter/material.dart';

class Settings extends StatefulWidget{
  const Settings({ Key? key }):super(key:key);
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings>{

  final style = TextStyle(fontSize: 14.0, color: Colors.white);
  var _value;

  @override
  void initState() {
    _value = false;
    super.initState();
  }

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
                              "CẤU HÌNH",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            )
                        ),
                      ],
                    )
                ),

                Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(32,34,53, 1),
                    ),

                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text("Quét mã vạch bằng PDA", style: style),
                        ),
                        Container(
                            child: Transform.scale(
                                scale: 1,
                                child: Switch(
                                  onChanged: (value){
                                    print("Swich change to: $value");
                                    setState(() {
                                      _value = value;
                                    });
                                  },
                                  value: _value,

                                )
                            )
                        )
                      ],
                    )

                )


              ],
            )
        )
    );
  }
}