import 'package:flutter/material.dart';

class Schedule extends StatefulWidget{
  const Schedule({ Key? key }):super(key:key);
  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule>{
  final search_controller = TextEditingController();

  final List<dynamic> data = [
    { "name": "Công ty TNHH Một thành viên Trần Văn Phước", "product_name": "Urea Bio TM màu xanh lá 40 ký", "quantity": "60", "scanned": "59", "export_success": "54", "export_error": "5", "create_on": "13:15 22/12/2022", "location": "Sóc Trăng", "type": "Online" },
    { "name": "Công ty TNHH Một thành viên Trần Văn Phước", "product_name": "Urea Bio TM màu xanh lá 40 ký", "quantity": "60", "scanned": "59", "export_success": "54", "export_error": "5", "create_on": "13:15 22/12/2022", "location": "Sóc Trăng", "type": "Online" },
  ];

  @override
  Widget build( BuildContext context ){
    return Scaffold(
        body: SafeArea(
            child: Column(
              children: <Widget>[
                Container(

                    padding: const EdgeInsets.all(12.0),
                    decoration: const BoxDecoration(
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
                                  margin: const EdgeInsets.all(8.0),
                                  child: const Icon(Icons.arrow_back_ios, color: Colors.white)
                              ),
                            )
                        ),
                        const Expanded(
                            child: Text(
                              "PHÂN PHỐI THEO LỊCH",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            )
                        ),
                        Container(
                            child: InkWell(
                              onTap: (){

                              },
                              child: Container(
                                  margin: const EdgeInsets.all(8.0),
                                  child: const Icon(Icons.qr_code, color: Colors.white)
                              ),
                            )
                        ),
                      ],
                    )
                ),

                Container(
                    child: TextFormField(
                      controller: search_controller,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.search_rounded, color: Colors.white30),
                          hintText: "Tìm kiếm",
                          hintStyle: TextStyle( color: Colors.white30 )
                      ),
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
                                                      margin: const EdgeInsets.only(top: 24, bottom: 24),
                                                      child: Row(
                                                        children: [
                                                          Expanded(
                                                            child: Text(data[index]["name"], textAlign: TextAlign.left, style: const TextStyle(color: Colors.white, fontSize: 20),),
                                                          )
                                                        ],
                                                      )
                                                    ),
                                                    Container(
                                                        margin: const EdgeInsets.only(top: 12, bottom: 24),
                                                        child: Row(
                                                          children: [
                                                            Expanded(
                                                              child: Text(data[index]["product_name"], textAlign: TextAlign.left, style: const TextStyle(color: Colors.white, fontSize: 16),),
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
                                                            ),
                                                            Expanded(
                                                              child: Text("Hủy bỏ" ,style: TextStyle(color: Colors.red, fontSize: 14.0, fontWeight: FontWeight.bold ),),
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
                                                    Expanded(
                                                        child: Column(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            const Icon(Icons.check, color: Colors.green, size: 20.0),
                                                            Text(data[index]["export_success"], style: const TextStyle( color: Colors.white, fontSize: 16.0 ),),
                                                            const Text("Thành công", style: TextStyle( color: Colors.white, fontSize: 14.0 ),),
                                                          ],
                                                        )
                                                    ),
                                                    Expanded(
                                                        child: Column(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            const Icon(Icons.close, color: Colors.red, size: 20.0),
                                                            Text(data[index]["export_error"], style: const TextStyle( color: Colors.white, fontSize: 16.0 ),),
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
                                                            title: Text(data[index]["location"], style: const TextStyle( color: Colors.white, fontSize: 16.0 ),),
                                                          )
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Expanded(
                                                            child: ListTile(
                                                              leading: const Icon(Icons.date_range, color: Colors.white),
                                                              title: Text(data[index]["create_on"], style: const TextStyle( color: Colors.white, fontSize: 16.0 ),),
                                                            )
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                )
                                              )
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