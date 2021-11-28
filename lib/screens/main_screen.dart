import 'package:flutter/material.dart';
import 'package:flutter_ss_portfolio/util/util.dart';
import 'package:flutter_ss_portfolio/widgets/body.dart';
import 'package:flutter_ss_portfolio/widgets/button_row.dart';
import 'package:flutter_ss_portfolio/widgets/contact_button.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.teal.shade900,
        title: Row(
          children: const [
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              foregroundImage:
                  NetworkImage('https://picsum.photos/seed/picsum/200/300'),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Midnight',
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                ),
              ),
            )
          ],
        ),
        actions: [
          ContactButton(
              buttonText: 'Contact Me',
              icon: const Icon(Icons.send_sharp),
              onPressed: () {
                launchMailto();
              })
        ],
      ),
      body: Stack(children: [
        Body(),
        Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(48),
              child: SizedBox(
                height: 60,
                child: const ButtonRow(),
              ),
            ))
      ]),
    );
  }
}
