import 'package:coinbit/UI/widget/custom_list.dart';
import 'package:coinbit/app.dart';
import 'package:coinbit/generated/l10n.dart';
import 'package:coinbit/utils/ui_data.dart';
import 'package:flutter/material.dart';

class SessionDetailPage extends StatefulWidget {
  const SessionDetailPage({Key? key}) : super(key: key);

  @override
  State<SessionDetailPage> createState() => _SessionDetailPageState();
}

class _SessionDetailPageState extends State<SessionDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            S.of(context).session_detail,
            style: TextStyle(color: AppColors.primary),
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: ListView(
            shrinkWrap: true,
            children: [
              CustomList(
                  title: "React App",
                  subtitle: "ReactApp.WalletConnect.com",
                  borderColor: Colors.transparent,
                  boxColor: Colors.transparent,
                  imageBackgroundColor: Colors.white,
                  image:
                      "https://1000logos.net/wp-content/uploads/2022/05/WalletConnect-Logo.png",
                  icon: Container()),
              Container(height: 1,width: MediaQuery.of(context).size.width,color: Colors.grey,margin: EdgeInsets.only(bottom: 15),),
              Text("Review eip155 permissions",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              Container(
                margin: EdgeInsets.only(bottom:5,top:5),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(width: 1,color: Colors.grey.shade400),color: Colors.grey.shade400.withOpacity(0.3)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Ethereum Kovan",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                  SizedBox(height: 5,),
                  Text("eth_sendTransaction,eth_signTransaction,eth_sign,personal_sign,eth_signTypedData",style: TextStyle(fontSize: 13),),
                  SizedBox(height: 10,),
                  Text("Event",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                  SizedBox(height: 5,),
                  Text("chainChanged,accountChanged",style: TextStyle(fontSize: 13),),
                 
              ],),),
               Container(
                margin: EdgeInsets.only(bottom:10,top:10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(width: 1,color: Colors.grey.shade400),color: Colors.grey.shade400.withOpacity(0.3)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Ethereum Kovan",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                  SizedBox(height: 5,),
                  Text("eth_sendTransaction,eth_signTransaction,eth_sign,personal_sign,eth_signTypedData",style: TextStyle(fontSize: 13),),
                  SizedBox(height: 10,),
                  Text("Event",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                  SizedBox(height: 5,),
                  Text("chainChanged,accountChanged",style: TextStyle(fontSize: 13),),
                 
              ],),),
              Container(height: 1,width: MediaQuery.of(context).size.width,color: Colors.grey,margin: EdgeInsets.only(bottom: 15),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text(S.of(context).expired,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                Text("Jumat 21 July 2022")
              ],),
              SizedBox(height: 5,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text(S.of(context).last_update,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                Text("Jumat 15 July 2022")
              ],),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.only(top:10,bottom: 10),
                height: 30,
                alignment: Alignment.center,
                width:MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.red.withOpacity(0.4),borderRadius: BorderRadius.circular(10),),
                child: Text(S.of(context).delete,style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 13),),),
                Container(
                margin: EdgeInsets.only(top:10,bottom: 10),
                height: 30,
                alignment: Alignment.center,
                width:MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.blue.withOpacity(0.4),borderRadius: BorderRadius.circular(10),),
                child: Text(S.of(context).ping,style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 13),),),
              
                Container(
                margin: EdgeInsets.only(top:10,bottom: 10),
                height: 30,
                alignment: Alignment.center,
                width:MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.purple.withOpacity(0.4),borderRadius: BorderRadius.circular(10),),
                child: Text(S.of(context).emit,style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold,fontSize: 13),),),
              
                Container(
                margin: EdgeInsets.only(top:10,bottom: 10),
                height: 30,
                alignment: Alignment.center,
                width:MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.amber.withOpacity(0.4),borderRadius: BorderRadius.circular(10),),
                child: Text(S.of(context).update,style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 13),),)
              
              
            ],
          ),
        ));
  }
}
