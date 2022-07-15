import 'package:coinbit/UI/pages/home.dart';
import 'package:coinbit/UI/pages/pairing.dart';
import 'package:coinbit/UI/pages/session.dart';
import 'package:coinbit/assets.dart';
import 'package:coinbit/generated/l10n.dart';
import 'package:coinbit/utils/ui_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({ Key? key }) : super(key: key);

  @override
  State<NavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _selectedIndex = 0;

  final _widgetOptions = [
    MyHomePage(),
    SessionPage(),
    PairingPages()
   
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(                                                   
    borderRadius: BorderRadius.only(                                           
      topRight: Radius.circular(20), topLeft: Radius.circular(20)),            
    boxShadow: [                                                               
      BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 0),       
    ],                                                                         
  ), 
              child: ClipRRect(
           borderRadius: BorderRadius.only(                                           
    topLeft: Radius.circular(20.0),                                            
    topRight: Radius.circular(20.0),                                           
    ), 
                child: BottomNavigationBar(
            
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(Assets.icon.listSVG,height: 20,),
                activeIcon: SvgPicture.asset(Assets.icon.listSVG,color: AppColors.primary,height: 20,),
                title: Text(S.of(context).account,style: TextStyle(fontSize: 12)),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(Assets.icon.sessionSVG,height: 20,),
                activeIcon: SvgPicture.asset(Assets.icon.sessionSVG,color: AppColors.primary,height: 20,),
                title: Text(S.of(context).session,style: TextStyle(fontSize: 12),),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(Assets.icon.pairingSVG,height: 20,),
                activeIcon: SvgPicture.asset(Assets.icon.pairingSVG,color: AppColors.primary,height: 20,),
                title: Text(S.of(context).pairing,style: TextStyle(fontSize: 12)),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(Assets.icon.settingSVG,height: 20,),
                activeIcon: SvgPicture.asset(Assets.icon.settingSVG,color: AppColors.primary,height: 20,),
                title: Text(S.of(context).setting,style: TextStyle(fontSize: 12)),
              ),
              
            ],

            type: BottomNavigationBarType.fixed,
            
            currentIndex: _selectedIndex,
            fixedColor: AppColors.primary,
            onTap: _onItemTapped,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        
        backgroundColor: AppColors.primary,
        child: SvgPicture.asset('assets/icon/connect.svg',color: Colors.white,),onPressed: (){
          // Navigator.push(context, MaterialPageRoute(builder: (ctx)=>AddTask()));
        },),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}