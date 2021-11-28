import 'package:flutter/material.dart';
import 'package:flutter_ss_portfolio/widgets/contact_button.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 1,
          child: Container(
              color: Colors.blueGrey.shade900,
              child: Column(children: [
                Expanded(
                    child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/images/LaptopCode.png',
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 0),
                          child: Text('I\'m a Coastal Kraken \n I make stuff!!',
                              style: TextStyle(
                                  fontSize: 50,
                                  color: Colors.brown.shade700,
                                  fontWeight: FontWeight.w800)),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 260),
                            child: ContactButton(
                                buttonText: 'Say Hellow!',
                                icon: const Icon(Icons.message),
                                onPressed: () {}),
                          ),
                        )
                      ],
                    )
                  ],
                ))
              ])),
        ),
        Expanded(
            child: Container(
                color: Colors.blueGrey.shade900,
                child: Column(
                  children: [],
                )))
      ],
    );
  }
}
