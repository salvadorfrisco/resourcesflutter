import 'package:flutter/material.dart';
import 'qr/qr_code.dart';
import 'screens/credit_card_screen.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new MyHomePage(),
      routes: <String, WidgetBuilder>{
        '/creditCard': (BuildContext context) => new CreditCardScreen(),
        '/scanQrCode': (BuildContext context) => new QrCodeScreen(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('TestProject'),
        ),
        body: new Center(
            child: Column(
              children: <Widget>[
                new FlatButton(
                    child: const Text('Card'),
                    onPressed: () => Navigator.of(context).pushNamed('/creditCard')
                ),
                new FlatButton(
                    child: const Text('Scan QR'),
                    onPressed: () => Navigator.of(context).pushNamed('/scanQrCode')
                ),
              ],
            )
        )
    );
  }
}
