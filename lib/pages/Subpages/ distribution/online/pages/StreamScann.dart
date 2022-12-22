import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_qr_bar_scanner/qr_bar_scanner_camera.dart';

class StreamScan extends StatefulWidget{
  const StreamScan({ Key? key }):super(key:key);
  @override
  _StreamScanState createState() => _StreamScanState();
}

class _StreamScanState extends State<StreamScan>{
  String? _qrInfo = 'Scan a QR/Bar code';
  bool _camState = false;
  List<String?> QRs = [];
  int QRCount = 0;

  _qrCallback(String? code) {

    if( !QRs.contains(code) ){
      QRs.add(code);
      setState(() {
        QRCount = QRCount + 1;
      });
    }
    // setState(() {
    //   // _camState = false;
    //   _qrInfo = code;
    // });
  }


  _scanCode() {
    setState(() {
      _camState = true;
    });
  }

  @override
  void initState() {
    super.initState();
    _scanCode();
  }

  @override
  void dispose() {
    super.dispose();
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
                                Navigator.pop(context, QRs);
                              },
                              child: Container(
                                  margin: EdgeInsets.all(8.0),
                                  child: Icon(Icons.arrow_back_ios, color: Colors.white)
                              ),
                            )
                        ),
                        Expanded(
                            child: Text(
                              "QR PHÂN PHỐI CẤP 1",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            )
                        ),
                        Container(
                            child: InkWell(
                              onTap: (){

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
                        child: Column(
                          children: <Widget>[
                            Center(

                              child: SizedBox(
                                height: MediaQuery.of(context).size.height - 126,
                                width: 500,
                                child: QRBarScannerCamera(
                                  onError: (context, error) => Text(
                                    error.toString(),
                                    style: TextStyle(color: Colors.red),
                                  ),
                                  qrCodeCallback: (code) {
                                    _qrCallback(code);
                                  },
                                ),
                              ),
                            ),
                            Positioned(
                              child: Text(QRCount.toString(), style: TextStyle(color: Colors.white, fontSize: 32),),
                              bottom: 20,
                              left: 20,
                            )
                          ],
                        )



                    )
                )


              ],
            )
        )
    );
  }
}