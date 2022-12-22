import 'package:flutter/material.dart';
import 'package:udpp/pages/Subpages/%20distribution/online/pages/RedisQRScan.dart';
import 'package:udpp/pages/Subpages/%20distribution/online/pages/StreamScann.dart';
import 'package:udpp/pages/Subpages/%20distribution/online/pages/redistributor_list.dart';

class Tier1 extends StatefulWidget{
  const Tier1({ Key? key }):super(key:key);
  @override
  _Tier1State createState() => _Tier1State();
}

class _Tier1State extends State<Tier1>{

  final content = TextStyle(fontSize: 16.0, color: Colors.white);
  final title = TextStyle(fontSize: 16.0, color: Colors.white);
  final hint = TextStyle(fontSize: 14.0, color: Colors.white10);
  final input = TextStyle(fontSize: 14.0, color: Colors.white);
  final decor = BoxDecoration(
      border: Border( bottom: BorderSide( width: 2.0, color: Colors.white10 ) )
  );

  final tier_1_controller = TextEditingController();
  final product_controller = TextEditingController();
  final quantity_controller = TextEditingController();
  final command_controller = TextEditingController();


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
                          "PHÂN PHỐI CẤP 1",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )
                    ),
                    Container(
                        child: InkWell(
                          onTap: () async {
                            final QRs = await Navigator.of(context).push(MaterialPageRoute(builder: (context) => RedisQRScan(title: "QR PHÂN PHỐI CẤP 1",)));
                            // final QRs = await Navigator.of(context).push(MaterialPageRoute(builder: (context) => StreamScan()));
                            print(QRs);
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
                          InkWell(
                             onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => RedistributorList()));
                              },
                              child: Container(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: RichText(
                                            text: TextSpan(
                                                text: "Nhà phân phối cấp 1",
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
                                      controller: tier_1_controller,
                                      style: content,
                                      decoration: InputDecoration(
                                          hintText: "Chọn nhà phân phối",
                                          hintStyle: hint,
                                          suffixIcon: Container(
                                              margin: EdgeInsets.only(right: 8.0),
                                              child: Icon(Icons.arrow_drop_down_outlined, color: Color.fromRGBO(255,255,255,0.5), size: 16.0,)
                                          )
                                      ),
                                      onTap: () {
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => RedistributorList()));

                                      },
                                    )
                                  ],
                                ),
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
                                            text: "Sản phẩm",
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
                                  controller: product_controller,
                                  style: content,
                                  decoration: InputDecoration(
                                      hintText: "Chọn sản phẩm",
                                      hintStyle: hint,
                                      suffixIcon: Container(
                                          margin: EdgeInsets.only(right: 8.0),
                                          child: InkWell(
                                              onTap: (){
                                                /* Navigate to redistributor list */
                                              },
                                              child: Icon(Icons.arrow_drop_down_outlined, color: Color.fromRGBO(255,255,255,0.5), size: 16.0,)

                                          )
                                      )
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
                                  style: content,
                                  decoration: InputDecoration(
                                    hintText: "Nhập số lượng sản phẩm",
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
                                    hintText: "Nhập số lệnh phân phối",
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
                                      setState(() {
                                        tier_1_controller.text = "Banh Thi Mong Meo";
                                        product_controller.text = "Ure dam ca mau";
                                        quantity_controller.text = "12";
                                        command_controller.text = "12301458416";
                                      });
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