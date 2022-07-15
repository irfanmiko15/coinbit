import 'package:coinbit/UI/widget/custom_list.dart';
import 'package:coinbit/generated/l10n.dart';
import 'package:coinbit/utils/ui_data.dart';
import 'package:flutter/material.dart';

class PairingPages extends StatefulWidget {
  const PairingPages({ Key? key }) : super(key: key);

  @override
  State<PairingPages> createState() => _PairingPagesState();
}

class _PairingPagesState extends State<PairingPages> {
  @override
  
     Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text(
          S.of(context).pairing,
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
                  CustomList(
                    title: "React App",
                    subtitle: "ReactApp.WalletConnect.com",
                    borderColor: Colors.grey.shade400,
                    boxColor: Colors.transparent,
                    imageBackgroundColor: Colors.white,
                    image:
                        "https://1000logos.net/wp-content/uploads/2022/05/WalletConnect-Logo.png",
                    icon: 
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.grey.shade200.withOpacity(0.7)),
                          child:Icon(
                          Icons.delete,
                          size: 15,
                        ))
                  )
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