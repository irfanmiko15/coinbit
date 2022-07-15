import 'package:coinbit/UI/widget/custom_list.dart';
import 'package:coinbit/generated/l10n.dart';
import 'package:coinbit/router/router.dart';
import 'package:coinbit/utils/ui_data.dart';
import 'package:flutter/material.dart';

class SessionPage extends StatefulWidget {
  const SessionPage({ Key? key }) : super(key: key);

  @override
  State<SessionPage> createState() => _SessionPageState();
}

class _SessionPageState extends State<SessionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text(
          S.of(context).session,
          style: TextStyle(color: AppColors.primary),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  InkWell(
                    onTap: ()=>{
                      Navigator.of(context).pushNamed(Routes.session_detail)
                    },
                    child: 
                  CustomList(
                    title: "React App",
                    subtitle: "ReactApp.WalletConnect.com",
                    borderColor: Colors.grey.shade400,
                    boxColor: Colors.transparent,
                    imageBackgroundColor: Colors.white,
                    image:
                        "https://1000logos.net/wp-content/uploads/2022/05/WalletConnect-Logo.png",
                    icon: 
                        Icon(
                          Icons.keyboard_arrow_right,
                          size: 20,
                        ),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}