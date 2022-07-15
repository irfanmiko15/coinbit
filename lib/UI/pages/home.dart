import 'package:coinbit/UI/widget/custom_list.dart';
import 'package:coinbit/generated/l10n.dart';
import 'package:coinbit/utils/ui_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final key = new GlobalKey<ScaffoldState>();
    return Scaffold(
      key: key,
      appBar: AppBar(
        title: Text(
          S.of(context).account,
          style: TextStyle(color: AppColors.primary),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Mainnets",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  CustomList(
                    title: "Ethereum",
                    subtitle: "0x2k2o12i4j2q4j",
                    borderColor: Colors.indigo.shade100,
                    boxColor: Colors.indigo.shade100.withOpacity(0.6),
                    imageBackgroundColor: Colors.white,
                    image:
                        "https://ethereum.org/static/a183661dd70e0e5c70689a0ec95ef0ba/6ed5f/eth-diamond-purple.webp",
                    icon: InkWell(
                        onTap: () => {
                              Fluttertoast.showToast(msg: "Copied to Clipboard" )
                            },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.grey.shade200.withOpacity(0.7)),
                          child:Icon(
                          Icons.copy,
                          size: 15,
                        ))),
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
