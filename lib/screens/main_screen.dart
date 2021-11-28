import 'package:flutter/material.dart';
import 'package:flutter_ss_portfolio/widgets/body.dart';
import 'package:flutter_ss_portfolio/widgets/contact_button.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.tealAccent,
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
                print('herro!');
              })
        ],
      ),
      body: Stack(children: [Body()]),
    );
  }
}
