import 'package:flutter/material.dart';

class CustomList extends StatefulWidget {
  final String? image;
  final String? title;
  final String? subtitle;
  final Color borderColor;
  final Color boxColor;
  final Color imageBackgroundColor;
  final Widget? icon;

  const CustomList(
      {Key? key,
      this.image,
      this.title,
      this.subtitle,
      this.icon,
      required this.imageBackgroundColor,
      required this.borderColor,
      required this.boxColor})
      : super(key: key);

  @override
  State<CustomList> createState() => _CustomListState();
}

class _CustomListState extends State<CustomList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: widget.boxColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: widget.borderColor)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              
              CircleAvatar(
                
                backgroundColor: widget.imageBackgroundColor,
                
                child: Image.network(widget.image!,fit: BoxFit.cover,),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title!,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.subtitle!,
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              )
            ],
          ),
          Container(
            child: widget.icon,
          )
        ],
      ),
    );
  }
}
