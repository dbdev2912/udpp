import "package:flutter/material.dart";

import 'drawer_menu_list.dart';

class RightDrawerWidget extends StatelessWidget{
  const RightDrawerWidget({
    Key? key
  }) : super( key: key );

  @override
  Widget build(BuildContext context){
    return Drawer(
      child: SafeArea(
        child: Container(
            decoration: const BoxDecoration(
                color: Color.fromRGBO(32, 34, 51, 1 )
            ),
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(12.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                          width: 50, height: 50,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/avatar.jpg'),
                          )
                      ),
                      Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text(
                                "Quá trời buồn ngủ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                )
                            ),
                          )
                      )
                    ],
                  ),
                ),
                MenuListTileWidget(),
              ],
            )
        ),
      )

    );
  }
}