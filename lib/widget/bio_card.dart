import 'package:flutter/material.dart';

class BioWidget extends StatelessWidget {
  const BioWidget(
      {Key? key,
      required this.leadingIcon,
      required this.title,
      required this.subTitle,
      required this.trailingIcon,
      this.marginBottom = 0,
      required this.onPressed
      })
      : super(key: key);
  final IconData leadingIcon;
  final String title;
  final String subTitle;
  final IconData trailingIcon;
  final double marginBottom;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.red, width: 1)),
      margin:
          EdgeInsetsDirectional.only(start: 20, end: 20, bottom: marginBottom),
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(leadingIcon),
        ),
        title: Text(
          title,
          style: TextStyle(fontFamily: 'Mukta', fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subTitle,
            style: TextStyle(fontFamily: 'Mukta', fontWeight: FontWeight.bold,fontSize: 12)),
        trailing: IconButton(onPressed: onPressed, icon: Icon(trailingIcon)),
      ),
    );
  }
}
