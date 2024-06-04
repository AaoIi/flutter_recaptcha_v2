import 'package:flutter/material.dart';
import 'package:flutter_recaptcha_v2_compat/recaptcha_v2.dart';

void main() => runApp(MyApp());

const TAG = 'ReCaptchaV2';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Google ReCaptcha Demo'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 24),
                  RecaptchaV2Button(
                    apiKey: "6LfXp1UpAAAAAEku9BSeBt6JJxXrlvtYjh--X4D7",
                    apiSecret: "6LfXp1UpAAAAAIFVynIPkooVWZi5qN8u16SYJTVt",
                    pluginURL:
                        'https://recaptcha-flutter-plugin.firebaseapp.com/',
                    isErrorShowing: false,
                    onVerified: (val) {
                      print('$TAG: Verified $val');
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
