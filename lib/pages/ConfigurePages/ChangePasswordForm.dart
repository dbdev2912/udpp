import 'package:flutter/material.dart';

class ChangePasswordForm extends StatefulWidget{
  const ChangePasswordForm({ Key? key }):super(key:key);
  @override
  _ChangePasswordFormState createState() => _ChangePasswordFormState();
}

class _ChangePasswordFormState extends State<ChangePasswordForm>{

  final passwordController_1 = TextEditingController();
  final passwordController_2 = TextEditingController();
  bool password_show_1 = true;
  bool password_show_2 = true;

  final label = TextStyle(fontSize: 14.0, color: Colors.white);
  final input = TextStyle(fontSize: 14.0, color: Colors.white);
  final title = TextStyle(fontSize: 18.0, color: Colors.white);

  final decor = BoxDecoration(
      border: Border( bottom: BorderSide( width: 2.0, color: Colors.white10 ) )
  );

  void PasswordConfirmRequest(){
    final password = passwordController_1.text;
    final reenter = passwordController_2.text;

    print(password);
    print(reenter);
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
                              "ĐỔI MẬT KHẨU",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white, fontSize: 18),
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
                            padding: EdgeInsets.all(12.0),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.all(24.0),
                                  child: Text("Mật khẩu cũ phải khác mật khẩu mới và có tối thiểu 8 ký tự, cả số lẫn chữ", style: title,),
                                ),
                                Container(
                                    padding: EdgeInsets.all(12.0),
                                    child: TextFormField(
                                      obscureText: password_show_1,
                                      controller: passwordController_1,
                                      style: const TextStyle(
                                          color: Color.fromRGBO(255, 255, 255, 1)
                                      ),

                                      decoration: InputDecoration(
                                          hintText: "Mật khẩu mới",
                                          hintStyle: label,
                                          fillColor: Color.fromRGBO(0, 0, 0, 1),
                                          filled: true,

                                          border: const OutlineInputBorder(
                                              borderRadius: BorderRadius.all( Radius.circular(24.0)),
                                              borderSide: BorderSide( color: Colors.black54, width: 1 )
                                          ),

                                          suffixIcon: Container(
                                              margin: EdgeInsets.only(right: 8.0),
                                              child: InkWell(
                                                onTap: (){
                                                  setState(() {
                                                    password_show_1 = !password_show_1;

                                                  });
                                                },
                                                child: password_show_1 == true ? Icon(Icons.visibility_off_outlined, color: Color.fromRGBO(255,255,255,0.5), size: 20.0,) : Icon(Icons.visibility_outlined, color: Color.fromRGBO(255,255,255,0.5), size: 20.0,),

                                              )
                                          )
                                      ),
                                    )
                                ),

                                Container(
                                    padding: EdgeInsets.all(12.0),
                                    child: TextFormField(
                                      obscureText: password_show_2,
                                      controller: passwordController_2,
                                      style: const TextStyle(
                                          color: Color.fromRGBO(255, 255, 255, 1)
                                      ),

                                      decoration: InputDecoration(
                                          hintText: "Xác nhận mật khẩu mới",
                                          hintStyle: label,
                                          fillColor: Color.fromRGBO(0, 0, 0, 1),
                                          filled: true,

                                          border: const OutlineInputBorder(
                                              borderRadius: BorderRadius.all( Radius.circular(24.0)),
                                              borderSide: BorderSide( color: Colors.black54, width: 1 )
                                          ),

                                          suffixIcon: Container(
                                              margin: EdgeInsets.only(right: 8.0),
                                              child: InkWell(
                                                onTap: (){
                                                  setState(() {
                                                    password_show_2 = !password_show_2;

                                                  });
                                                },
                                                child: password_show_2 == true ? Icon(Icons.visibility_off_outlined, color: Color.fromRGBO(255,255,255,0.5), size: 20.0,) : Icon(Icons.visibility_outlined, color: Color.fromRGBO(255,255,255,0.5), size: 20.0,),

                                              )
                                          )
                                      ),
                                    )
                                ),
                                Container(
                                    margin: const EdgeInsets.only(top: 8.0, bottom: 16.0),
                                    child: Padding(
                                        padding: const EdgeInsets.all(12),
                                        child: ElevatedButton(
                                          onPressed: (){
                                            PasswordConfirmRequest();
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