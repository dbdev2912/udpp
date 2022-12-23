import 'package:flutter/material.dart';
import 'package:udpp/pages/Subpages/refund/refund/refundCascadeQRScan.dart';

class RefundForm extends StatefulWidget{
  const RefundForm({ Key? key }):super(key:key);
  @override
  _RefundFormState createState() => _RefundFormState();
}

class _RefundFormState extends State<RefundForm>{
  final quantity_controller = TextEditingController();

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
                              "BẮT ĐẦU TRẢ HÀNG",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            )
                        ),
                        Container(
                            child: InkWell(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Container(
                                  margin: EdgeInsets.all(8.0),
                                  child: Icon(Icons.qr_code, color: Colors.white)
                              ),
                            )
                        ),
                      ],
                    )
                ),

                Center(
                    child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(32,34,53, 1),
                        ),

                        child: Container(
                            padding: EdgeInsets.all(12.0),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.all(24.0),
                                  child: Text("Nhập lượng hàng cần trả", style:TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1), fontSize: 20,
                                  ),),
                                ),
                                Container(
                                    padding: EdgeInsets.all(12.0),
                                    child: TextFormField(
                                      controller: quantity_controller,
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontSize: 20,
                                      ),

                                      decoration: InputDecoration(
                                        fillColor: Color.fromRGBO(0, 0, 0, 1),
                                        filled: true,

                                        border: const OutlineInputBorder(
                                            borderRadius: BorderRadius.all( Radius.circular(24.0)),
                                            borderSide: BorderSide( color: Colors.black54, width: 1 )
                                        ),

                                      ),
                                    )
                                ),
                                Container(
                                    margin: const EdgeInsets.only(top: 8.0, bottom: 16.0),
                                    child: Padding(
                                        padding: const EdgeInsets.all(12),
                                        child: ElevatedButton(
                                          onPressed: (){
                                            // Navigator.of(context).push( MaterialPageRoute(builder: (context) => NewRefundStreamScan( qr_amount: int.parse(quantity_controller.text) ) ));
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


              ],
            )
        )
    );
  }
}