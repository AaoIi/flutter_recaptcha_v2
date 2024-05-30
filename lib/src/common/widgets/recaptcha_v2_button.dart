import 'package:flutter/material.dart';

class RecaptchaV2Button extends StatelessWidget {
  const RecaptchaV2Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      child: Column(
        children: [
          Container(
            color: Colors.grey,
          ),
          Text('Please verify that you are not a robot.')
        ],
      ),
    );
  }
}
