import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
            decoration: BoxDecoration(
                color: Colors.brown.shade700,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                children: [
                  TextButton.icon(
                      onPressed: () => launch('https://instagram.com'),
                      icon: Image.asset(
                        'assets/images/social/instagram.png',
                        height: 45,
                        width: 45,
                      ),
                      label: Text('')),
                  TextButton.icon(
                      onPressed: () => launch('https://twitter.com'),
                      icon: Image.asset(
                        'assets/images/social/facebook.png',
                        height: 45,
                        width: 45,
                      ),
                      label: Text('')),
                  TextButton.icon(
                      onPressed: () => launch('https://facebook.com'),
                      icon: Image.asset(
                        'assets/images/social/twitter.png',
                        height: 45,
                        width: 45,
                      ),
                      label: Text(''))
                ],
              ),
            ))
      ],
    );
  }
}
