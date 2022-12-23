import 'package:flutter/material.dart';

class RefundHistory extends StatefulWidget{
  const RefundHistory({ Key? key }):super(key:key);
  @override
  _RefundHistoryState createState() => _RefundHistoryState();
}

class _RefundHistoryState extends State<RefundHistory>{

  final List<dynamic> data = [
    { "id": "0", "name": "Kho nội bộ", "quantity": "10", "scanned": "0", "create_on": "08:48 23/12/2022" },
    { "id": "0", "name": "Kho nội bộ", "quantity": "10", "scanned": "0", "create_on": "08:48 23/12/2022" },
    { "id": "0", "name": "Kho nội bộ", "quantity": "10", "scanned": "0", "create_on": "08:48 23/12/2022" },
    { "id": "0", "name": "Kho nội bộ", "quantity": "10", "scanned": "0", "create_on": "08:48 23/12/2022" },
  ];

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
                              "LỊCH SỬ TRẢ HÀNG",
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

                Expanded(
                    child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(32,34,53, 1),
                        ),

                        child: Container(
                            margin: const EdgeInsets.only(top: 8),
                            padding: const EdgeInsets.all(12),
                            child: SingleChildScrollView(
                                child: Column(
                                  children: <Widget>[

                                    ListView.builder(
                                      shrinkWrap: true,
                                      physics: const NeverScrollableScrollPhysics(),
                                      itemCount: data.length,
                                      itemBuilder: (BuildContext context, int index){
                                        return Container(
                                          margin: const EdgeInsets.only(top: 24.0),

                                          padding: const EdgeInsets.all(8.0),
                                          decoration: const BoxDecoration(
                                              border: Border(bottom: BorderSide(width: 2.0, color: Colors.white10))
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                  padding: const EdgeInsets.all(12.0),

                                                  decoration: const BoxDecoration(
                                                      color: Color.fromRGBO(36, 55, 81, 1),
                                                      borderRadius: BorderRadius.only( topLeft: Radius.circular(20), topRight: Radius.circular(20) )
                                                  ),

                                                  child: Column(


                                                    children: <Widget>[
                                                      Container(
                                                          margin: const EdgeInsets.only(top: 8, bottom: 24),
                                                          child: Row(
                                                            children: [
                                                              Expanded(
                                                                child: Text(data[index]["name"], textAlign: TextAlign.left, style: const TextStyle(color: Colors.white, fontSize: 22),),
                                                              ),
                                                            ],
                                                          ),

                                                      ),
                                                      Container(
                                                          margin: const EdgeInsets.only(top: 12.0),
                                                          child: Column(
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  Expanded(
                                                                      child: Text(data[index]["create_on"], style: const TextStyle( color: Colors.white, fontSize: 16.0 ),),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          )
                                                      ),
                                                      Container(
                                                          margin: EdgeInsets.only(top: 24, bottom: 12),
                                                          child: InkWell(
                                                              child: Row(
                                                                children: [
                                                                  Expanded(
                                                                    child: Text("Tiếp tục" , style: TextStyle(color: Colors.blue, fontSize: 14.0, fontWeight: FontWeight.bold ),),
                                                                  ),
                                                                  Expanded(
                                                                    child: Text("Xóa" ,style: TextStyle(color: Colors.red, fontSize: 14.0, fontWeight: FontWeight.bold ),),
                                                                  )
                                                                ],
                                                              )
                                                          )
                                                      ),
                                                    ],
                                                  )
                                              ),
                                              Container(
                                                  margin: const EdgeInsets.only(top: 24.0),
                                                  child: Row(
                                                    children: [
                                                      Expanded(
                                                          child: Column(
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            children: [
                                                              const Icon(Icons.production_quantity_limits_outlined, color: Colors.white, size: 20.0),
                                                              Text(data[index]["quantity"], style: const TextStyle( color: Colors.white, fontSize: 16.0 ),),
                                                              const Text("Số lượng", style: TextStyle( color: Colors.white, fontSize: 14.0 ),),
                                                            ],
                                                          )
                                                      ),
                                                      Expanded(
                                                          child: Column(
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            children: [
                                                              const Icon(Icons.qr_code, color: Colors.white, size: 20.0),
                                                              Text(data[index]["scanned"], style: const TextStyle( color: Colors.white, fontSize: 16.0 ),),
                                                              const Text("Đã quét", style: TextStyle( color: Colors.white, fontSize: 14.0 ),),
                                                            ],
                                                          )
                                                      ),

                                                    ],
                                                  )
                                              ),

                                            ],
                                          ),
                                        );
                                      },

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