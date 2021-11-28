import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

launchMailto() async {
  final mailtoLink = Mailto(
    to: ['arreiskurai@yahoo.com'],
    cc: ['MidnightSP@yahoo.com'],
    subject: 'Mail from Dart Portfolio',
    body: 'Insert Message Here',
  );
  await launch('$mailtoLink');
}
