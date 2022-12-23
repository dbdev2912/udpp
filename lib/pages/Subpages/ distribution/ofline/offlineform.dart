import 'package:flutter/material.dart';

import 'OfflineDistributionCascadeQRScan.dart';

class OfflineForm extends StatefulWidget{
  const OfflineForm({ Key? key }):super(key:key);
  @override
  _OfflineFormState createState() => _OfflineFormState();
}

class _OfflineFormState extends State<OfflineForm>{

  final content = TextStyle(fontSize: 16.0, color: Colors.white);
  final title = TextStyle(fontSize: 16.0, color: Colors.white);
  final hint = TextStyle(fontSize: 14.0, color: Colors.white10);
  final input = TextStyle(fontSize: 14.0, color: Colors.white);
  final decor = BoxDecoration(
      border: Border( bottom: BorderSide( width: 2.0, color: Colors.white10 ) )
  );


  final name_controller = TextEditingController();
  final quantity_controller = TextEditingController();
  final command_controller = TextEditingController();
  final note_controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    quantity_controller.text = "1";
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
                              "PHÂN PHỐI OFFLINE",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            )
                        ),
                        Container(
                            child: InkWell(
                              onTap: (){
                                // Navigator.pop(context);
                              },
                              child: Container(
                                  margin: EdgeInsets.all(8.0),
                                  child: Icon(Icons.qr_code, color: Colors.transparent)
                              ),
                            )
                        ),
                      ],
                    )
                ),

                Expanded(
                    child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(32,34,53, 1),
                        ),

                        child: Container(
                            margin: EdgeInsets.only(top: 32),
                            padding: EdgeInsets.all(12),
                            child: SingleChildScrollView(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Expanded(
                                                child: RichText(
                                                  text: TextSpan(
                                                      text: "Tên đợt phân phối offline",
                                                      style: title,
                                                      children: <TextSpan>[
                                                        TextSpan( text: "*", style: TextStyle(color: Colors.red) )
                                                      ]
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          TextFormField(
                                            controller: name_controller,
                                            style: content,
                                            decoration: InputDecoration(
                                              hintText: "Nhập tên đợt phân phối",
                                              hintStyle: hint,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(top: 24.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Expanded(
                                                child: RichText(
                                                  text: TextSpan(
                                                      text: "Số lượng",
                                                      style: title,
                                                      children: <TextSpan>[
                                                        TextSpan( text: "*", style: TextStyle(color: Colors.red) )
                                                      ]
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          TextFormField(
                                            controller: quantity_controller,
                                            keyboardType: TextInputType.number,
                                            style: content,
                                            decoration: InputDecoration(
                                              hintText: "Nhập số lượng",
                                              hintStyle: hint,

                                            ),
                                          )
                                        ],
                                      ),
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(top: 24.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Expanded(
                                                child: RichText(
                                                  text: TextSpan(
                                                      text: "Lệnh phân phối",
                                                      style: title,
                                                      children: <TextSpan>[
                                                        TextSpan( text: "*", style: TextStyle(color: Colors.red) )
                                                      ]
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          TextFormField(
                                            controller: command_controller,
                                            style: content,
                                            decoration: InputDecoration(
                                              hintText: "Nhập lệnh phân phối",
                                              hintStyle: hint,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(top: 24.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Expanded(
                                                child: RichText(
                                                  text: TextSpan(
                                                      text: "Ghi chú",
                                                      style: title,
                                                      children: <TextSpan>[
                                                        TextSpan( text: "*", style: TextStyle(color: Colors.red) )
                                                      ]
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          TextFormField(
                                            controller: note_controller,
                                            style: content,
                                            decoration: InputDecoration(
                                              hintText: "Nhập ghi chú cho đợt phân phối",
                                              hintStyle: hint,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),

                                    Container(
                                        margin: const EdgeInsets.only(top: 8.0, bottom: 16.0),
                                        child: Padding(
                                            padding: const EdgeInsets.all(12),
                                            child: ElevatedButton(
                                              onPressed: (){
                                                Navigator.of(context).push( MaterialPageRoute(builder: (context) => OfflineDistributionCascadeQRScan( qr_amount: int.parse(quantity_controller.text), )) );
                                              },
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(24.0),
                                                ),
                                                backgroundColor: const Color.fromRGBO(27, 186, 221, 1),
                                                minimumSize: const Size.fromHeight(50),
                                              ),
                                              child: const Text(
                                                  "Tiếp tục",
                                                  style: TextStyle(
                                                    fontSize: 16.0,
                                                    color: Color.fromRGBO(0, 0, 0, 1),
                                                  )
                                              ),
                                            )
                                        )
                                    )


                                  ],
                                )
                            )

                        )

                    )
                )


              ],
            )
        )
    );
  }
}