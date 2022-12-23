import 'package:flutter/material.dart';

class HistoryListItem extends StatefulWidget{
  const HistoryListItem({ Key? key, required this.data,  }):super( key: key );
  final dynamic data;

  @override
  HistoryListItemState createState() => HistoryListItemState();
}

class HistoryListItemState extends State<HistoryListItem>{


  @override
  Widget build(BuildContext context){
    final data = widget.data;
    return Scaffold(
      body: Container(
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
                        margin: const EdgeInsets.only(top: 24, bottom: 24),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(data["name"], textAlign: TextAlign.left, style: const TextStyle(color: Colors.white, fontSize: 20),),
                            )
                          ],
                        )
                    ),
                    Container(
                        margin: const EdgeInsets.only(top: 12, bottom: 24),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(data["product_name"], textAlign: TextAlign.left, style: const TextStyle(color: Colors.white, fontSize: 16),),
                            )
                          ],
                        )
                    ),

                    Container(
                        child: InkWell(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text("Phân phối" ,style: TextStyle(color: Colors.blue, fontSize: 14.0, fontWeight: FontWeight.bold ),),
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
                            Text(data["quantity"], style: const TextStyle( color: Colors.white, fontSize: 16.0 ),),
                            const Text("Số lượng", style: TextStyle( color: Colors.white, fontSize: 14.0 ),),
                          ],
                        )
                    ),
                    Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.qr_code, color: Colors.white, size: 20.0),
                            Text(data["scanned"], style: const TextStyle( color: Colors.white, fontSize: 16.0 ),),
                            const Text("Đã quét", style: TextStyle( color: Colors.white, fontSize: 14.0 ),),
                          ],
                        )
                    ),
                    Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.check, color: Colors.green, size: 20.0),
                            Text(data["export_success"], style: const TextStyle( color: Colors.white, fontSize: 16.0 ),),
                            const Text("Thành công", style: TextStyle( color: Colors.white, fontSize: 14.0 ),),
                          ],
                        )
                    ),
                    Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.close, color: Colors.red, size: 20.0),
                            Text(data["export_error"], style: const TextStyle( color: Colors.white, fontSize: 16.0 ),),
                            const Text("Xuất lỗi", style: TextStyle( color: Colors.white, fontSize: 14.0 ),),
                          ],
                        )
                    ),
                  ],
                )
            ),
            Container(
                margin: const EdgeInsets.only(top: 12.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: ListTile(
                              leading: const Icon(Icons.location_on_outlined, color: Colors.white),
                              title: Text(data["location"], style: const TextStyle( color: Colors.white, fontSize: 16.0 ),),
                            )
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: ListTile(
                              leading: const Icon(Icons.date_range, color: Colors.white),
                              title: Text(data["create_on"], style: const TextStyle( color: Colors.white, fontSize: 16.0 ),),
                            )
                        ),
                      ],
                    ),
                  ],
                )
            )
          ],
        ),
      )
    );
  }
}