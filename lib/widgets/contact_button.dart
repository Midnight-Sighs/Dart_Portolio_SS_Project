import 'package:flutter/material.dart';

class ContactButton extends StatelessWidget {
  final String buttonText;
  final Widget icon;
  final Function onPressed;
  const ContactButton(
      {Key? key,
      required this.buttonText,
      required this.icon,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextButton.icon(
          style: TextButton.styleFrom(
              textStyle: const TextStyle(color: Colors.blueGrey),
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
          onPressed: () {
            onPressed();
          },
          icon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: icon,
          ),
          label: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              buttonText,
              style: const TextStyle(
                  color: Colors.blueGrey, fontWeight: FontWeight.w700),
            ),
          )),
    );
  }
}
