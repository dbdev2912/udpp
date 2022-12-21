import 'package:flutter/material.dart';

class TopAppBar extends StatefulWidget {
  const TopAppBar({ Key? key, this.scaffoldKey }) :super(key: key);
  final scaffoldKey;
  @override
  _AppBarState createState() => _AppBarState();
}


class _AppBarState extends State<TopAppBar>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        key: widget.scaffoldKey,
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Color.fromRGBO(32, 34, 53, 1),
        ),
        child: Row(
          children: <Widget>[
            Container(
              child: Container(
                margin: EdgeInsets.all(8.0),
                child: Icon(Icons.qr_code, color: Colors.white)
              )
            ),
            Expanded(
                child: Text(
                  "DANH MỤC",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 18),

                )
            ),
            Container(
                child: Container(
                    margin: EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){
                        print("Open drawer");
                        widget.scaffoldKey.currentState!.openEndDrawer();
                      },
                      child: Icon(Icons.menu, color: Colors.white)
                    )
                )
            ),
          ],
        )
      )
    );
  }
}