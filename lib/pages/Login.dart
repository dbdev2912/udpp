import 'package:flutter/material.dart';

import 'Home.dart';

class Login extends StatefulWidget{
  const Login({ Key? key }):super( key: key );

  @override
  _LoginState createState() => _LoginState();
}



class _LoginState extends State<Login>{

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  bool password_show = true;


  @override
  void dispose(){
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> LoginRequest() async{
    final username = usernameController.text;
    final password = passwordController.text;

    print( "Username: $username" );
    print( "Password: $password" );

    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => Home(username: username))
    );
  }

  @override
  Widget build( BuildContext context ){
    return Scaffold(
      body: SafeArea(
        child:  Center(
            child: SingleChildScrollView(
                child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(32, 34, 51, 1)
                    ),
                    child: Expanded(
                      child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                    color: const Color.fromRGBO(0, 0, 0, 0)
                                ),
                                child: Padding(
                                    padding: const EdgeInsets.all(0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const SizedBox(
                                          width: 150.0,
                                          height: 150.0,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.transparent,
                                            backgroundImage:AssetImage("assets/images/login-logo.png"),


                                          ),
                                        ),

                                        Container(
                                          margin: const EdgeInsets.all(12.0),
                                          child: const Text(
                                              "ỨNG DỤNG PHÂN PHỐI",
                                              style: TextStyle(
                                                  fontSize: 24.0,
                                                  color: Color.fromRGBO(28, 139, 168, 1)
                                              )
                                          ),
                                        ),


                                        Form(
                                            child:
                                            Container(
                                                decoration: const BoxDecoration(
                                                  color: Colors.transparent,
                                                ),
                                                child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: <Widget>[
                                                      Container(
                                                          margin: const EdgeInsets.only(top: 8.0),
                                                          child:  Padding(
                                                            padding: const EdgeInsets.all(12.0),
                                                            child: TextFormField(
                                                              controller: usernameController,
                                                              style: const TextStyle(
                                                                  color: Color.fromRGBO(117, 117, 117, 1)
                                                              ),


                                                              decoration: const InputDecoration(
                                                                hintText: "Username",
                                                                hintStyle: TextStyle(
                                                                    color: Color.fromRGBO(117, 117, 117, 1)
                                                                ),
                                                                fillColor: Color.fromRGBO(0, 0, 0, 1),
                                                                filled: true,

                                                                prefixIcon: Icon(Icons.person_outline_rounded, color: Color.fromRGBO(255,255,255, 0.7), size: 20.0,),

                                                                border: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.all( Radius.circular(24.0)),
                                                                    borderSide: BorderSide( color: Colors.black54, width: 1 )

                                                                ),


                                                              ),
                                                            ),
                                                          )
                                                      ),
                                                      Container(
                                                          margin: const EdgeInsets.only(top: 8.0),
                                                          child:  Padding(
                                                            padding: const EdgeInsets.all(12.0),
                                                            child: TextFormField(
                                                              controller: passwordController,
                                                              obscureText: password_show,
                                                              style: const TextStyle(
                                                                  color: Color.fromRGBO(117, 117, 117, 1)
                                                              ),
                                                              decoration: InputDecoration(
                                                                  hintText: "Password",
                                                                  hintStyle: TextStyle(
                                                                      color: Color.fromRGBO(117, 117, 117, 1)
                                                                  ),
                                                                  fillColor: Color.fromRGBO(0, 0, 0, 1),
                                                                  filled: true,
                                                                  prefixIcon: Icon(Icons.lock_outline, color: Color.fromRGBO(255,255,255,0.7), size: 20.0,),
                                                                  border: OutlineInputBorder(
                                                                      borderRadius: BorderRadius.all( Radius.circular(24.0)),
                                                                      borderSide: BorderSide( color: Colors.black54, width: 1 )
                                                                  ),
                                                                  suffixIcon: Container(
                                                                      margin: EdgeInsets.only(right: 8.0),
                                                                      child: InkWell(
                                                                        onTap: (){
                                                                          setState(() {
                                                                            password_show = !password_show;

                                                                          });
                                                                        },
                                                                        child: password_show == true ? Icon(Icons.visibility_off_outlined, color: Color.fromRGBO(255,255,255,0.5), size: 20.0,) : Icon(Icons.visibility_outlined, color: Color.fromRGBO(255,255,255,0.5), size: 20.0,),

                                                                      )
                                                                  )
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
                                                                  LoginRequest();
                                                                },
                                                                style: ElevatedButton.styleFrom(
                                                                  shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(24.0),
                                                                  ),
                                                                  backgroundColor: const Color.fromRGBO(27, 186, 221, 1),
                                                                  minimumSize: const Size.fromHeight(50),
                                                                ),
                                                                child: const Text(
                                                                    "ĐĂNG NHẬP",
                                                                    style: TextStyle(
                                                                      fontSize: 22.0,
                                                                      color: Color.fromRGBO(0, 0, 0, 1),

                                                                    )
                                                                ),
                                                              )
                                                          )
                                                      )

                                                    ]
                                                )
                                            )
                                        )
                                      ],
                                    )
                                )
                            ),
                          ]
                      ),
                    )
                )
            )
        )

      )
    );
  }
}