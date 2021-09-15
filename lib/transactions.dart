import 'package:flutter/material.dart';

class Transactions extends StatelessWidget {
  final Color color, tcolor;
  final Image image;
  final String listtext;
  final String subtext;
  final String trailtext;
  const Transactions({
    Key? key,
    required this.color,
    required this.tcolor,
    required this.image,
    required this.listtext,
    required this.subtext,
    required this.trailtext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        bottom: 15,
        top: 5,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[200]!,
              blurRadius: 10.0, // soften the shadow
              spreadRadius: 1.0, //extend the shadow
              offset: Offset(
                -1.0, // Move to right 10  horizontally
                2.0, // Move to bottom 10 Vertically
              ),
            )
          ],
        ),
        child: ListTile(
          leading: CircleAvatar(
            radius: 30.0,
            backgroundColor: color,
            child: image,
          ),
          title: Text(listtext),
          subtitle: Text(subtext),
          trailing: Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            height: 30,
            width: 80,
            child: Center(
                child: Text(
              trailtext,
              style: TextStyle(
                color: tcolor,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
        ),
      ),
    );
  }
}
