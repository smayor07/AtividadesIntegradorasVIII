import 'package:flutter/material.dart';

class CustonButton extends StatelessWidget {
  final String label;
  final double height;
  final double width;
  final Widget icon;
  final Function onTap;

  const CustonButton(
      {Key key,
      this.label = "",
      this.height = 55,
      this.width,
      this.icon,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Material(
        color: Colors.blue.withOpacity(0.5),
        child: InkWell(
          splashColor: Color(0xFF0EBCA3),
          onTap: onTap,
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Color(0xFF0EBCA3))),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                icon == null ? Container() : icon,
                Container(
                  width: 7,
                ),
                Text(
                  label,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
