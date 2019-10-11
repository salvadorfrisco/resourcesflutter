import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'theme.dart';

class Functions {
  static showSnackBar(message, key, duration, {backgroundColor = Colors.black}) {
    final snack =
        SnackBar(content: Text(message), duration: Duration(seconds: duration), backgroundColor: backgroundColor,);
    key.currentState.showSnackBar(snack);
  }

  static String retireMaskFormat(String valueWithMask) {
    return valueWithMask.replaceAll('.', '').replaceAll(',', '.');
  }

  static SizedBox separator(double size) {
    return SizedBox(
      height: size,
      width: size,
    );
  }

  static SizedBox separatorWithColor({double height, double width, Color color = Colors.transparent}) {
    return SizedBox(
      height: height,
      width: width,
      child: DecoratedBox(decoration: BoxDecoration(color: color)),
    );
  }

  static Divider divider({color = Colors.grey, height = 10.0}) {
    return Divider(
      color: color,
      height: height,
    );
  }

  static Widget buildMenuOption({
    @required String title,
    Widget leading,
    Function onTapAction,
    Widget trailing,
  }) {
    return InkWell(
        onTap: onTapAction ??
            () {
              print('ACTION');
            },
        child: ListTile(
            leading: leading ?? null,
            title: Text(
              title,
              style: TextStyles.dark, textScaleFactor: 1.1,
            ),
            trailing: trailing ?? null));
  }

  static adaptDate(date) {
    if (date != null && date.isNotEmpty) {
      var fullDate = date.substring(0, 10);
      var day = fullDate.substring(8, 10);
      var month = fullDate.substring(5, 7);
      var year = fullDate.substring(0, 4);
      return "$day/$month/$year";
    }
    return null;
  }

  static showAlert(context, String title, String msg, {Function callbackFunction}) {
    return Platform.isIOS ? 
      showCupertinoDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(                        
            title: Text(title),
            content: Text(msg),
            actions: <Widget>[
              CupertinoDialogAction(
                isDefaultAction: true,
                child: SizedBox(
                  height: 20,
                  child: FlatButton(
                    child: Text("OK", style: TextStyles.brand1),
                    onPressed: callbackFunction != null ? 
                      callbackFunction :
                      () { Navigator.of(context).pop();},
                  )
                )
              ),
            ],
          ); 
        }
      ) 
      :
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title,
              style: TextStyles.darkBold, textScaleFactor: 1.3,
            ),
            content: Text(msg,
              style: TextStyles.dark, textScaleFactor: 1.2,
            ),
            actions: <Widget>[
              FlatButton(
                child: Text("OK"),
                onPressed: callbackFunction != null ? 
                  callbackFunction :
                  () { Navigator.of(context).pop();},
              ),
            ],
          );
        },
      );
  }

  static buildChip(
      {@required String labelText,
      @required labelStyle,
      @required bgColor,
      @required Icon icon,
      @required borderColor}) {
    return Stack(
      children: <Widget>[
        Chip(
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
              side: BorderSide(color: borderColor)),
          padding: EdgeInsets.only(left: 26.0, right: 6),
          label: Text(labelText, textScaleFactor: 1.14, style: labelStyle),
        ),
        IconButton(icon: icon, onPressed: () { print("AQUI Pressionou o IconButton"); },),
      ],
    );
  }

  static getRiskColor(letter) {
    if (letter == 'B') return AppStyles.lowRisk;
    if (letter == 'M') return AppStyles.mediumRisk;
    if (letter == 'A') return AppStyles.highRisk;
  }

  static getRiskDescription(letter) {
    if (letter == 'B') return 'Baixo Risco';
    if (letter == 'M') return 'Médio Risco';
    if (letter == 'A') return 'Alto Risco';
  }

  static capitalize(s) {
    return s[0].toUpperCase() + s.substring(1).toLowerCase();
  }
}
