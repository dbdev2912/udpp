import 'package:flutter/material.dart';

class RedistributorList extends StatefulWidget{
  const RedistributorList({ Key? key }):super(key:key);
  @override
  _RedistributorListState createState() => _RedistributorListState();
}

class _RedistributorListState extends State<RedistributorList>{

  final search_controller = TextEditingController();

  List<dynamic> data = [
    {"id": "0", "name": "ALY - Nhà phân phối cấp 1"},
    {"id": "1", "name": "Agrmex Nghệ An"},
    {"id": "2", "name": "An Giang (Cambodia) Plan Protection Co.,Ltd"},
    {"id": "3", "name": "Anh Thái"},
    {"id": "4", "name": "Ban QLDA Nhà máy Alumina Nhân cơ - Vinacomin"},
    {"id": "5", "name": "Ban QLDA Xây dụng công trình Giao thông Cà Mau"},
    {"id": "0", "name": "ALY - Nhà phân phối cấp 1"},
    {"id": "1", "name": "Agrmex Nghệ An"},
    {"id": "2", "name": "An Giang (Cambodia) Plan Protection Co.,Ltd"},
    {"id": "3", "name": "Anh Thái"},
    {"id": "4", "name": "Ban QLDA Nhà máy Alumina Nhân cơ - Vinacomin"},
    {"id": "5", "name": "Ban QLDA Xây dụng công trình Giao thông Cà Mau"},
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
                              "NHÀ PHÂN PHỐI CẤP 1",
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
                                  child: Icon(Icons.qr_code, color: Colors.transparent)
                              ),
                            )
                        ),
                      ],
                    )
                ),
                Container(
                  child: TextFormField(
                    controller: search_controller,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search_rounded, color: Colors.white30),
                      hintText: "Tìm kiếm",
                      hintStyle: TextStyle( color: Colors.white30 )
                    ),
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

                                    ListView.builder(
                                      shrinkWrap: true,
                                      physics: const NeverScrollableScrollPhysics(),
                                      itemCount: data.length,
                                      itemBuilder: (BuildContext context, int index){
                                        return Container(

                                          padding: EdgeInsets.all(8.0),
                                          child: ListTile(
                                            title: Text(data[index]["name"] , style: TextStyle(color: Colors.white),),
                                          ),
                                          decoration: BoxDecoration(
                                              border: Border(bottom: BorderSide(width: 2.0, color: Colors.white10))
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