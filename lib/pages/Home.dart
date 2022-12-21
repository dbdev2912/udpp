import 'package:flutter/material.dart';
import 'package:udpp/pages/Subpages/%20distribution/index.dart';
import 'package:udpp/pages/Subpages/history/history.dart';
import 'package:udpp/pages/Subpages/notification/notify.dart';
import 'package:udpp/pages/Subpages/refund/refund.dart';
import 'package:udpp/pages/welcome.dart';
import 'package:udpp/widget/drawer/drawer.dart';

class Home extends StatefulWidget{
  const Home({ Key? key, required this.username }):super( key: key );
  final username;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
  final scaffoldKey = GlobalKey<ScaffoldState>();
  var _currentIndex;
  var _currentPage ;
  var _is_selected = false;
  var _pages = [DistributionIndexPage(), HistoryPage(), NotifyPage(), RefundPage()];
  var _labels = ["PHÂN PHỐI", "LỊCH SỬ", "THÔNG BÁO","TRẢ HÀNG"];
  var _currentLabel;

  void _changePage( index ){
    setState(() {
      _is_selected = true;
      _currentIndex = index;
      _currentPage = _pages[index];
      _currentLabel = _labels[index];
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    _currentIndex = 0;
    _currentPage = WelcomePage();
    _currentLabel = "WELCOME";
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      key: scaffoldKey,
      endDrawer: const RightDrawerWidget(),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color.fromRGBO(255, 255, 255, 0.5),
        unselectedLabelStyle: TextStyle(
            color:  Color.fromRGBO(255, 255, 255, 0.5),

        ),

        selectedItemColor: _is_selected == false? Colors.grey : Color.fromRGBO(255, 255, 255, 1),
        selectedLabelStyle: TextStyle(
            color:  Color.fromRGBO(255, 255, 255, 1)
        ),

        backgroundColor: Color.fromRGBO(32, 34, 53, 1),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.send_rounded),
              label: "PHÂN PHỐI"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: "LỊCH SỬ"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: "THÔNG BÁO"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.refresh),
              label: "TRẢ HÀNG"
          ),
        ],
        onTap: ( selectedIndex ) => _changePage(selectedIndex),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {

          setState(() {
            _currentPage = WelcomePage();
            _currentLabel = "WELCOME";
            _is_selected = false;
          });
        },
        child: Icon(Icons.home_outlined, color: Colors.white),
        backgroundColor: Color.fromRGBO(32,34,52,1),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

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
                        child: Container(
                            margin: EdgeInsets.all(8.0),
                            child: Icon(Icons.qr_code, color: Colors.white)
                        )
                    ),
                    Expanded(
                        child: Text(
                          _currentLabel,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 18),

                        )
                    ),
                    Container(
                        child: Container(
                            margin: EdgeInsets.all(8.0),
                            child: InkWell(
                                onTap: (){
                                  scaffoldKey.currentState!.openEndDrawer();
                                },
                                child: Icon(Icons.menu, color: Colors.white)
                            )
                        )
                    ),
                  ],
                )
            ),
            Expanded(
              child: _currentPage
            )

          ],
        )
      )
    );
  }
}