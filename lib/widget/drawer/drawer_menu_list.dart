import "package:flutter/material.dart";
import 'package:udpp/pages/ConfigurePages/Account.dart';
import 'package:udpp/pages/ConfigurePages/ChangePassword.dart';
import 'package:udpp/pages/ConfigurePages/Info.dart';
import 'package:udpp/widget/navigation_item.dart';

import '../../pages/ConfigurePages/setting.dart';

class MenuListTileWidget extends StatelessWidget{
  const MenuListTileWidget({super.key});

  @override
  Widget build( BuildContext context ){
    final style = TextStyle(color: Color.fromRGBO(255,255,255, 1), fontSize: 16.0);
    final marginTop = 8.0;
    return SingleChildScrollView(

      child: Container(
        child:Column(
          children: <Widget>[


            // NavigationItem( icon: Icons.settings_outlined, label: "Cấu hình", action: null ),

            Container(margin: EdgeInsets.only(top: marginTop),),
            Row(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.all(8.0),
                    child:  Icon( Icons.settings_outlined , color: Colors.white)
                ),
                Expanded(
                    child: InkWell(
                      onTap:(){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Settings()));
                      },
                      child: Container(
                          margin: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                              border: Border( bottom: BorderSide( color: Color.fromRGBO(255,255,255,0.25), ) )
                          ),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  child: Container(
                                      padding: EdgeInsets.all(4.0),
                                      child: Text( "Cấu hình", style: style)
                                  )
                              ),
                              Icon(Icons.navigate_next, color: Color.fromRGBO(255,255,255,0.5) )
                            ],
                          )
                      )
                    )

                )
              ],
            ),

            // NavigationItem( icon: Icons.info_outline, label: "Thông tin", action: null ),

            Container(margin: EdgeInsets.only(top: marginTop),),
            Row(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.all(8.0),
                    child:  Icon( Icons.info_outline , color: Colors.white)
                ),
                Expanded(
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Info()));
                      },
                      child: Container(
                          margin: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                              border: Border( bottom: BorderSide( color: Color.fromRGBO(255,255,255,0.25), ) )
                          ),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  child: Container(
                                      padding: EdgeInsets.all(4.0),
                                      child: Text( "Thông tin", style: style)
                                  )
                              ),
                              Icon(Icons.navigate_next, color: Color.fromRGBO(255,255,255,0.5) )
                            ],
                          )
                      )
                    )

                )
              ],
            ),

            // NavigationItem( icon: Icons.person_outline_rounded, label: "Tài khoản", action: null ),

            Container(margin: EdgeInsets.only(top: marginTop),),
            Row(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.all(8.0),
                    child:  Icon( Icons.person_outline_rounded , color: Colors.white)
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Account()));
                    },
                    child: Container(
                        margin: EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                            border: Border( bottom: BorderSide( color: Color.fromRGBO(255,255,255,0.25), ) )
                        ),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                child: Container(
                                    padding: EdgeInsets.all(4.0),
                                    child: Text( "Tài khoản", style: style)
                                )
                            ),
                            Icon(Icons.navigate_next, color: Color.fromRGBO(255,255,255,0.5) )
                          ],
                        )
                    )
                  )


                )
              ],
            ),

            // NavigationItem( icon: Icons.lock_outline, label: "Đổi mật khẩu", action: null ),

            Container(margin: EdgeInsets.only(top: marginTop),),
            Row(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.all(8.0),
                    child:  Icon( Icons.lock_outline , color: Colors.white)
                ),
                Expanded(
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>ChangePassword()));
                      },
                        child: Container(
                            margin: EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                                border: Border( bottom: BorderSide( color: Color.fromRGBO(255,255,255,0.25), ) )
                            ),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                    child: Container(
                                        padding: EdgeInsets.all(4.0),
                                        child: Text( "Đổi mật khẩu", style: style)
                                    )
                                ),
                                Icon(Icons.navigate_next, color: Color.fromRGBO(255,255,255,0.5) )
                              ],
                            )
                        )
                    )

                )
              ],
            ),

            // NavigationItem( icon: Icons.logout, label: "Đăng xuất", action: null ),

            Container(margin: EdgeInsets.only(top: marginTop),),
            Row(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.all(8.0),
                    child:  Icon( Icons.logout , color: Colors.white)
                ),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                            border: Border( bottom: BorderSide( color: Color.fromRGBO(255,255,255,0.25), ) )
                        ),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                child: Container(
                                    padding: EdgeInsets.all(4.0),
                                    child: Text( "Đăng xuất", style: style)
                                )
                            ),
                            Icon(Icons.navigate_next, color: Color.fromRGBO(255,255,255,0.5) )
                          ],
                        )
                    )

                )
              ],
            ),

          ],
        )
      )
    );
  }
}