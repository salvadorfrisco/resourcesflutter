import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class QrCodeScreen extends StatefulWidget {
  @override
  _QrCodeScreenState createState() => _QrCodeScreenState();
}

class _QrCodeScreenState extends State<QrCodeScreen> {
  String barcode = '';
  Uint8List bytes = Uint8List(200);

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QrCodeScreen Scanner Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 200,
                height: 200,
                child: Image.memory(bytes),
              ),
              Text('RESULT  $barcode'),
              RaisedButton(onPressed: _scan, child: Text("Scan")),
              RaisedButton(onPressed: _scanPhoto, child: Text("Scan Photo")),
              RaisedButton(onPressed: _generateBarCode, child: Text("Generate Barcode")),
            ],
          ),
        ),
      ),
    );
  }

  Future _scan() async {
    String barcode = await scanner.scan();
    setState(() => this.barcode = barcode);
  }

  Future _scanPhoto() async {
    String barcode = await scanner.scanPhoto();
    setState(() => this.barcode = barcode);
  }

  Future _generateBarCode() async {
    Uint8List result = await scanner.generateBarCode('https://github.com/leyan95/QrCodeScreen_scanner');
    this.setState(() => this.bytes = result);
  }
}
